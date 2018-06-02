package br.com.boxiot.controller;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.boxiot.dao.ItemDAO;
import br.com.boxiot.model.Item;

@Controller
@Transactional
@RequestMapping("/item")
public class ItemController {

	@Autowired
	private ItemDAO itemDAO;

	/*@InitBinder*/
	/*protected void initBinder(WebDataBinder binder) {
		binder.setValidator(new ProdutoValidator());
	}*/

	@RequestMapping("/cadastro")
	public ModelAndView form(Item item) {
		ModelAndView modelAndView = new ModelAndView("item/cadastro");
		return modelAndView;
	}

	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView save(@Valid Item item, BindingResult bindingResult,
			RedirectAttributes redirectAttributes) {
		if (bindingResult.hasErrors()) {
			return form(item);
		}
		System.out.println("salvar produto...");
		itemDAO.save(item);
		redirectAttributes.addFlashAttribute("sucesso", "Usuário cadastrado	com	sucesso");
		return new ModelAndView("redirect:item");
	}

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView modelAndView = new ModelAndView("item/consulta");
		modelAndView.addObject("itens", itemDAO.list());
		return modelAndView;
	}
	
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
