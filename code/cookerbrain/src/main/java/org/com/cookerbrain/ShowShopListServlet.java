package org.com.cookerbrain;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

@WebServlet("/ShowShopListServlet")
public class ShowShopListServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();

        try {
            // Load the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Установление соединения с БД
            Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/cookerbrain",
                    "root",
                    "1111"
            );
            // Prepare and execute the SQL query
            String sql = "SELECT id, item FROM shoplist";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();

            // Display the result in HTML
            JSONArray jsonArray = new JSONArray();
            while (resultSet.next()) {
                JSONObject item = new JSONObject();
                item.put("id", resultSet.getInt("id"));
                item.put("item", resultSet.getString("item"));
                jsonArray.add(item);
            }

            // Send JSON response
            out.print(jsonArray.toJSONString());

            // Close resources
            resultSet.close();
            statement.close();
            connection.close();

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            out.println("Error: " + e.getMessage());
        }
    }
}

