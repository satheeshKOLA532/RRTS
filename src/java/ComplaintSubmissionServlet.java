import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ComplaintSubmissionServlet")
public class ComplaintSubmissionServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve form parameters
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String location = request.getParameter("location");
        String issue = request.getParameter("issue");
        String complaint = request.getParameter("complaint");
        String message = request.getParameter("message");

        // Database connection parameters
        String jdbcUrl = "jdbc:mysql://localhost:3306/rrts";
        String dbUser = "root";
        String dbPassword = "R190532@rgukt";

        // Database query
        String sql = "INSERT INTO user_complaints (name, phone, location, issue, complaint, message) VALUES (?, ?, ?, ?, ?, ?)";

        try {
            // Load the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish the database connection
            try (Connection connection = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);
                    PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                // Set parameters
                preparedStatement.setString(1, name);
                preparedStatement.setString(2, phone);
                preparedStatement.setString(3, location);
                preparedStatement.setString(4, issue);
                preparedStatement.setString(5, complaint);
                preparedStatement.setString(6, message);

                // Execute the update
                int rowsAffected = preparedStatement.executeUpdate();

                // Check if the data was successfully inserted
                if (rowsAffected > 0) {
                    // Display an alert message
            response.getWriter().println("<script>alert('Complaint submitted successfully!');</script>");

            // Redirect to after_user_login.jsp after a delay
            response.getWriter().println("<script>setTimeout(function() { window.location.href = 'after_user_login.jsp'; }, 1000);</script>");
                } else {
                    response.getWriter().println("Failed to submit the complaint. Please try again.");
                }

            } catch (SQLException e) {
                e.printStackTrace();
                response.getWriter().println("Error processing the complaint. Please try again. Error details: " + e.getMessage());
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            response.getWriter().println("Error loading the JDBC driver. Please check your dependencies.");
        }
    }
}
