package com.mcompany.classified.controllers;

import com.mcompany.classified.entities.Product;
import com.mcompany.classified.services.ProductService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@Controller
@RequestMapping("/products")
@AllArgsConstructor
public class ProductController {
    private ProductService productService;

    @GetMapping
    public String showAllProducts(Model model, @RequestParam(defaultValue = "1", name = "p") Integer page) {
        if (page < 1) {
            page = 1;
        }
        model.addAttribute("products", productService.findAll(page - 1, 5));
        return "products";
    }

    @GetMapping("/{id}")
    @ResponseBody
    public Optional<Product> getOneProductById(@PathVariable Long id) {
        return productService.findById(id);
                //.orElseThrow(() -> new ResourceNotFoundException("Product with id: " + id + " doesn't exists"));
    }
}

