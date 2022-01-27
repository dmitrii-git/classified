package com.mcompany.classified.controllers;

import com.mcompany.classified.entities.Product;
import com.mcompany.classified.services.ProductService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/products")
@AllArgsConstructor
public class ProductController {
    private ProductService productService;


    @GetMapping
    public String showAllProducts(Model model) {
        List<Product> products = productService.findAll();
        model.addAttribute("products", products);
        return "products";
    }

    @GetMapping("/ascending")
    public String showAllProductsAscending(Model model) {
        List<Product> products = productService.findAllAscending();
        model.addAttribute("products", products);
        return "products";
    }






}

