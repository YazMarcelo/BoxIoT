package br.com.boxiot.controller;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.boxiot.dao.ItemDAO;
import br.com.boxiot.dao.LocalDAO;
import br.com.boxiot.dao.ModoDAO;
import br.com.boxiot.model.Modo;

@Controller
@Transactional
@RequestMapping("/modo")
public class ModoController {

	@Autowired
	private ModoDAO modoDAO;
	
	@Autowired
	private LocalDAO localDAO;
	
	@Autowired
	private ItemDAO itemDAO;

	@RequestMapping("/cadastro")
	public ModelAndView form(Modo modo) {
		ModelAndView modelAndView = new ModelAndView("modo/cadastro");
		modelAndView.addObject("locais", localDAO.list());
		modelAndView.addObject("itens", itemDAO.list());
		return modelAndView;
	}

	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView save(@Valid Modo modo, BindingResult bindingResult,
			RedirectAttributes redirectAttributes) {
		if (bindingResult.hasErrors()) {
			return form(modo);
		}
		Boolean alteracao = false;
		String msg = "";
		
		if(modo.getId() != null && modo.getId() > 0) {alteracao = true;}
		
		modoDAO.save(modo);
		
		msg = alteracao ? "Alteração efetuada com sucesso!" : "Cadastro efetuado com sucesso!";
		
		redirectAttributes.addFlashAttribute("msg", msg);
		return new ModelAndView("redirect:modo");
	}
	

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView modelAndView = new ModelAndView("modo/consulta");
		modelAndView.addObject("modos", modoDAO.list());
		return modelAndView;
	}
	
	@RequestMapping("/alteracao/{id}")
	public ModelAndView alterar(@PathVariable("id") int id, Modo modo){
	ModelAndView modelAndView = new ModelAndView("modo/alteracao");
	modelAndView.addObject("modo", modoDAO.obterModo(id));
	return modelAndView;
}
	@RequestMapping("/excluir/{id}")
	public ModelAndView excluir(@PathVariable("id") int id){
		Modo modo = modoDAO.obterModo(id);
		modo.setExcluido(true);
		modoDAO.save(modo);
		return new ModelAndView("redirect:/modo");
	}
	

}
