package br.com.boxiot.controller;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.boxiot.dao.ItemDAO;
import br.com.boxiot.dao.LocalDAO;
import br.com.boxiot.model.Item;
import br.com.boxiot.model.Local;
import br.com.boxiot.model.Usuario;

@Controller
@Transactional
@RequestMapping("/local")
public class LocalController {

	@Autowired
	private LocalDAO localDAO;

	/*@InitBinder*/
	/*protected void initBinder(WebDataBinder binder) {
		binder.setValidator(new ProdutoValidator());
	}*/

	@RequestMapping("/cadastro")
	public ModelAndView form(Local local) {
		ModelAndView modelAndView = new ModelAndView("local/cadastro");
		return modelAndView;
	}

	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView save(@Valid Local local, BindingResult bindingResult,
			RedirectAttributes redirectAttributes) {
		if (bindingResult.hasErrors()) {
			return form(local);
		}
		System.out.println("salvar local...");
		localDAO.save(local);
		redirectAttributes.addFlashAttribute("sucesso", "Local cadastrado com sucesso");
		return new ModelAndView("redirect:item");
	}
	
//	@RequestMapping("/update/{id}")
//	public ModelAndView update(@PathVariable("id") int id, @Valid Item item, BindingResult bindingResult,
//			RedirectAttributes redirectAttributes) {
//		if (bindingResult.hasErrors()) {
//			return alterar(id,item);
//		}
//		System.out.println("update produto...");
//		item.setId(id);
//		itemDAO.save(item);
//		redirectAttributes.addFlashAttribute("sucesso", "Usuário cadastrado	com	sucesso");
//		return new ModelAndView("item/consulta");
//	}

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView modelAndView = new ModelAndView("local/consulta");
		modelAndView.addObject("locais", localDAO.list());
		return modelAndView;
	}
	
	@RequestMapping("/alteracao/{id}")
	public ModelAndView alterar(@PathVariable("id") int id, Local local){
	ModelAndView modelAndView = new ModelAndView("local/alteracao");
	modelAndView.addObject("local", localDAO.obterLocal(id));
	return modelAndView;
}
	
//	public ModelAndView alterar(Item item) {
//		ModelAndView modelAndView = new ModelAndView("item/alteracao");
//		return modelAndView;
//	}

	
//	public ModelAndView alterar(@RequestParam(value="id") int id,Usuario usuario) {
//		ModelAndView modelAndView = new ModelAndView("usuario/alteracao");
//		modelAndView.addObject("usuario", usuarioDAO.obterUsuario(id));
//		return modelAndView;
//	}
	
	/*@RequestMapping("/alteracao/{id}")
	public ModelAndView alterar(@RequestParam(value="id") int id,Usuario usuario) {
		ModelAndView modelAndView = new ModelAndView("usuario/alteracao");
		modelAndView.addObject("usuario", usuarioDAO.obterUsuario(id));
		return modelAndView;
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView update(@Valid Usuario usuario, BindingResult bindingResult,
			RedirectAttributes redirectAttributes) {
		if (bindingResult.hasErrors()) {
			return form(usuario);
		}
		System.out.println("salvar produto...");
		usuarioDAO.save(usuario);
		redirectAttributes.addFlashAttribute("sucesso", "Usuário cadastrado	com	sucesso");
		return new ModelAndView("redirect:usuario");
	}*/

}
