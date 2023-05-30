package co.edu.sena.java_new_a.model.repository;

import co.edu.sena.java_new_a.model.Beans.Category;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public interface RepositoryCate<T> {


    List<Category> listcate() throws SQLException;
    T byIdcate (Integer id) throws  SQLException;

    int sabeCate(T t)  throws  SQLException;

    void deleteCate(Integer id) throws  SQLException;

    T createcate(ResultSet rs)throws SQLException;




}
