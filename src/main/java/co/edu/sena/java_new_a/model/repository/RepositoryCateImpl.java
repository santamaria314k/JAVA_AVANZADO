package co.edu.sena.java_new_a.model.repository;

import co.edu.sena.java_new_a.model.Beans.Category;
import co.edu.sena.java_new_a.model.util.ConnectionPool;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class RepositoryCateImpl implements  RepositoryCate<Category> {

    private String sql = null;

    @Override
    public List<Category> listcate() throws SQLException {
        sql = "select C.category_product, C.name_category " +
                "from categories C order by C.category_product, C.name_category";
        List<Category> catee = new ArrayList<>();

        try (Connection conn = ConnectionPool.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {
            while (rs.next()) {
                Category C = createcate(rs);
                catee.add(C);
            }
        }

        return catee;
    }//listAllObj




    @Override
    public Category byIdcate(Integer id) throws SQLException {
        sql = "select C.category_product, C.name_category " +
                "from categories C where C.category_product = ?";
        Category catego=null;

        try( Connection conn = ConnectionPool.getConnection();
             PreparedStatement ps= conn.prepareStatement(sql)){
            ps.setInt(1,id);
            try (ResultSet rs = ps.executeQuery()){

                if (rs.next()){
                    catego=createcate(rs);

                }

            }
        }


        return catego;
    }

    @Override
    public int sabeCate(Category category) throws SQLException {
        int rowsAffected = 0;

        if (category.getCategory_product() != null && category.getCategory_product() > 0) {
            sql = "update categories set category_product=?, name_category=? " +
                    "where category_product=?";
        } else {
            sql = "insert into categories(category_product, name_category) " +
                    "values(upper(?), upper(?))";
        }

        try (Connection conn = ConnectionPool.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, category.getCategory_product());
            ps.setString(2, category.getName_category());
            if (category.getCategory_product() != null && category.getCategory_product() > 0) {
                ps.setInt(3, category.getCategory_product());
            }

            rowsAffected = ps.executeUpdate();
        }
        return rowsAffected;
    }











    @Override
    public void deleteCate(Integer id) throws SQLException {
        sql ="delete from categories where category_product = ?";
        try( Connection coon = ConnectionPool.getConnection();
             PreparedStatement ps= coon.prepareStatement(sql)){
            ps.setInt(1,id);
            ps.executeUpdate();
        }

    }

    @Override
    public Category createcate(ResultSet rs) throws SQLException {
        Category ca = new Category();
        ca.setCategory_product(rs.getInt("category_product"));
        ca.setName_category(rs.getString("name_category"));
        return ca;

    }}