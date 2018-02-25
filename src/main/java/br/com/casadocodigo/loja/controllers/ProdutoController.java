package br.com.casadocodigo.loja.controllers;

import java.util.List;

import br.com.casadocodigo.loja.validation.ProdutoValidation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.casadocodigo.loja.daos.ProdutoDAO;
import br.com.casadocodigo.loja.models.Produto;
import br.com.casadocodigo.loja.models.TipoPreco;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;

@Controller
@RequestMapping("produto")
public class ProdutoController {

    @Autowired
    private ProdutoDAO produtoDao;

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.addValidators(new ProdutoValidation());


    }

    @RequestMapping("listar")
    public ModelAndView index() {
        System.out.println("Listando produto");
        List<Produto> produtos = produtoDao.listar();

        ModelAndView modelAndView = new ModelAndView("produtos/index");
        modelAndView.addObject("produtos", produtos);

        return modelAndView;
    }

    @RequestMapping("novo")
    public ModelAndView novo() {
        ModelAndView modelAndView = new ModelAndView("produtos/novo");
        modelAndView.addObject("tipos", TipoPreco.values());

        return modelAndView;
    }

    @RequestMapping("gravar")
    public ModelAndView gravar(@Valid  Produto produto,BindingResult result, RedirectAttributes redirectAttributes
                              ) {

        if (result.hasErrors()){
            for (ObjectError error : result.getAllErrors()) {

                System.out.println("Error: " + error.getObjectName());
                System.out.println("Error: " + error.toString());
            }
            ModelAndView modelAndView = new ModelAndView("produtos/novo");
            modelAndView.addObject("msg", "Houve algum erro!");
            modelAndView.addObject("typemsg", "danger");
            return modelAndView;
        }



        produtoDao.gravar(produto);

        redirectAttributes.addFlashAttribute("msg", "Produto cadastrado com sucesso!");
        redirectAttributes.addFlashAttribute("typemsg", "success");
        return new ModelAndView("redirect:listar");
//		return  "redirect:produtos/listar";
    }

    @RequestMapping("edit")
    public ModelAndView editar(int id) {
        ModelAndView modelAndView = new ModelAndView("produtos/editar");
        modelAndView.addObject("tipos", TipoPreco.values());

        return modelAndView;
    }
}
