package com.mcompany.classified.services;

import com.mcompany.classified.entities.Product;
import com.mcompany.classified.repositories.ProductRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@AllArgsConstructor
public class ProductService {
    private ProductRepository productRepository;


    public List<Product> findAll() {
        return productRepository.findAll();


    }

    public Optional<Product> findById(Long id) {
        return productRepository.findById(id);
    }

    public  List<Product> findAllAscending(){
        return productRepository.findAllByOrderByPriceAsc();
    }
}
