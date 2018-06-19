package br.com.boxiot.controller;

import java.util.ArrayList;

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
import br.com.boxiot.model.Item;
import br.com.boxiot.model.Local;
import br.com.boxiot.model.Usuario;

@Controller
@Transactional
@RequestMapping("/item")
public class ItemController {

	@Autowired
	private ItemDAO itemDAO;
	
	private String lstMsgSucesso;

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
		System.out.println("salvar item...");
		itemDAO.save(item);
		redirectAttributes.addFlashAttribute("msg", "Cadastro efetuado com sucesso!");
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
		ModelAndView modelAndView = new ModelAndView("item/consulta");
		modelAndView.addObject("itens", itemDAO.list());
		return modelAndView;
	}
	
	@RequestMapping("/alteracao/{id}")
	public ModelAndView alterar(@PathVariable("id") int id, Item item){
	ModelAndView modelAndView = new ModelAndView("item/alteracao");
	modelAndView.addObject("item", itemDAO.obterItem(id));
	return modelAndView;
}
	
	@RequestMapping("/excluir/{id}")
	public void excluir(@PathVariable("id") int id){
		System.out.println("excluir local...");
		Item item = itemDAO.obterItem(id);
		item.setExcluido(true);
		itemDAO.save(item);
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
