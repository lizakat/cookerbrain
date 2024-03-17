package org.com.cookerbrain;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.logging.Logger;

    @WebServlet(name = "RemoveFromShopListServlet", urlPatterns = {"/RemoveFromShopListServlet"})
    public class RemoveFromShopListServlet extends HttpServlet {
        private static final long serialVersionUID = 1L;

        protected HttpServletRequest req;
        protected HttpServletResponse resp;

        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            this.req = req;
            this.resp = resp;
            this.requestManager();
        }

        protected void requestManager() throws IOException {

        }

        protected void doPost(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
            Logger logger = Logger.getLogger(getClass().getName());
            logger.info("Начало обработки POST-запроса");
            Connection connection = null;

            try {
                // Загрузка драйвера
                Class.forName("com.mysql.cj.jdbc.Driver");

                // Установление соединения с БД
                connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/cookerbrain", "root", "1111");

                // Получение данных из HTML-формы

                String id = request.getParameter("Delete");

                logger.info("id: " + id);

                // Выполнение запроса к БД для удаления записи по ID
                String deleteQuery = "DELETE FROM cookerbrain.shoplist WHERE id = ?";
                try (PreparedStatement deleteStatement = connection.prepareStatement(deleteQuery)) {
                    deleteStatement.setString(1, id);
                    int rowsAffected = deleteStatement.executeUpdate();

                    if (rowsAffected > 0) {

                        out.println("Item removed successfully!<script>window.location.href='http://localhost:8888/resources/show_shop_list.html';</script>");
                    } else {
                        out.println("{\"status\": \"error\", \"message\": \"Failed to remove item. Item ID not found.\"}");
                    }
                }
            } catch (ClassNotFoundException | SQLException e) {
                logger.severe("An error occurred during item removal: " + e.getMessage());
                e.printStackTrace(); // Вывод стека вызовов в консоль
                out.println("An error occurred during item removal. Please try again later.");
            } finally {
                try {
                    // Закрытие соединения с БД в блоке finally
                    if (connection != null) {
                        connection.close();
                    }
                } catch (SQLException ex) {
                    logger.severe("An error occurred while closing the database connection: " + ex.getMessage());
                }
            }
        }
    }