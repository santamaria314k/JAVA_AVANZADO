package co.edu.sena.java_new_a.servlets;


import co.edu.sena.java_new_a.model.Beans.Category;
import co.edu.sena.java_new_a.model.repository.RepositoryCate;
import co.edu.sena.java_new_a.model.repository.RepositoryCateImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/registercate")

public class RegistreCategServlet  extends HttpServlet {

    @Override
    protected  void  doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Collect all form data
        Integer category_product = Integer.valueOf(request.getParameter("category_product"));
        String name_category = request.getParameter("name_category");


        // Fill it up in a User bean
        Category category = new Category(category_product, name_category);
        // Call Repository layer and save the user object to DB

        RepositoryCate<Category> repository = new RepositoryCateImpl();
        int rows = 0;

        try {
            rows = repository.sabeCate(category);

        } catch (SQLException e) {
            e.printStackTrace();
        }

        // todo Prepare an information message for the user about the success or failure of the operation
        if (rows == 0) {
            System.out.println("Ocurrió un error!");
        } else {
            System.out.println("Operación exitosa!");
        }

        // todo Write the message back to the page in the client browser

    }









}
