package co.edu.sena.java_new_a.model.repository;

import co.edu.sena.java_new_a.model.Beans.Product;

import java.sql.SQLException;

public class TestProduct {


        public static void main(String[] args )throws SQLException {
            Repositoryproduct<Product> repository=new ProductRepositoryImpl();
            System.out.println("==========save Insert ==========");
            Product ProductInsert=new Product();
            ProductInsert.setId_product(1);
            ProductInsert.setName_product("bubbaloo");
            ProductInsert.setValue_product("200 pesos");
            repository.saveprod(ProductInsert);

            ProductInsert.setId_product(2);
            ProductInsert.setName_product("papas fritas");
            ProductInsert.setValue_product("2000 pesos");
            repository.saveprod(ProductInsert);

            System.out.println("==========listAll==========");
            repository.listAllprod().forEach(System.out::println);
            System.out.println();
            System.out.println("========== byId ==========");
            System.out.println();
            System.out.println("========== save ==========");
            Product ProUpdate = new Product();
            ProUpdate.setId_product(2);
            ProUpdate.setName_product("chococono");
            ProUpdate.setValue_product("5000 pesos");
            repository.saveprod(ProUpdate);

            repository.listAllprod().forEach(System.out::println);
            System.out.println();
            System.out.println("========== delete ==========");
            repository.deleteprod(2);
            repository.listAllprod().forEach(System.out::println);
        }
    }

