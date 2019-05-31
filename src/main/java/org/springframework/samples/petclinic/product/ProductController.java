/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.springframework.samples.petclinic.product;

import ch.qos.logback.classic.Logger;
import java.util.Collection;
import java.util.Map;
import javax.validation.Valid;
import org.slf4j.LoggerFactory;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author donaldoherr
 */
@Controller
public class ProductController {
    
    private final ProductRepository product;
    Logger logger = (Logger) LoggerFactory.getLogger(ProductController.class);
    public ProductController(ProductRepository product) {
        this.product = product;
    }
    
            
    @GetMapping("/products")
    public String processFindForm(Product product, BindingResult result, Map<String, Object> model) {
        Collection<Product> results = this.product.findAll();
        model.put("products", results);
        return "productos/index";
    }
    
    @GetMapping("/products/report")
    public String processFindForm2(Product product, BindingResult result, Map<String, Object> model) {
        Collection<Product> results = this.product.findAll();
        model.put("products", results);
        return "productos/report";
    }
    
    @GetMapping("/products/create")
    public String initCreationForm(Map<String, Object> model) {
        Product product = new Product();
        model.put("product",product);
        return "productos/create";
    }
    
    @PostMapping("/products/create")
    public String processCreationForm(@Valid Product product, BindingResult result) {
        if(result.hasErrors()){
            return "/productos/create";
        }else{
            this.product.save(product);
            return "redirect:/products";
        }
    }
    
    @GetMapping("/products/{productsId}/edit")
    public String initUpdateUserForm(@PathVariable("productsId") int productsId, Model model) {
        Product product = this.product.findById(productsId);
        model.addAttribute(product);
        return "productos/edit";
    }
   
    @PostMapping("/products/{productId}/edit")
    public String processUpdateUserForm(@Valid Product product, BindingResult result, @PathVariable("productId") int productId) {
        if (result.hasErrors()) {
            return "products/edit";
        } else {
            product.setId(productId);
            this.product.save(product);
            return "redirect:/products";
        }
    }
    
    @PostMapping("/products/{productId}/delete")
    public String destroy(@Valid Product product, BindingResult result, @PathVariable("productId") int productId) {
       
        
        this.product.deleteProduct(productId);
        return "redirect:/products";
    }
    
    
   
}
