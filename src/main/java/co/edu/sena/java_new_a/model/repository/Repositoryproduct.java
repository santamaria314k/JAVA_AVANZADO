package co.edu.sena.java_new_a.model.repository;


import co.edu.sena.java_new_a.model.Beans.Product;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public interface Repositoryproduct<T> {
        List<Product> listAllprod() throws SQLException;
        T byIdprod(Integer id) throws SQLException;
        int saveprod(T t) throws SQLException;
        void deleteprod(Integer id) throws SQLException;
        T createprod(ResultSet rs) throws SQLException;
    }
