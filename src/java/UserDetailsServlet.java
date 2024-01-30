import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/UserDetailsServlet")
public class UserDetailsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Retrieve the username from the session
        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");

        // Replace these placeholders with your actual database details
        String jdbcUrl = "jdbc:mysql://localhost:3306/rrts";
        String dbUser = "root";
        String dbPassword = "R190532@rgukt";

        try {
            // Load the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish a connection
            Connection connection = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

            // Prepare SQL query to retrieve user details
            String query = "SELECT * FROM user_registration WHERE username=?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, username);

            // Execute the query
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                // Retrieve user details from the result set
                String fullName = resultSet.getString("username");
                String email = resultSet.getString("email");
                String phone = resultSet.getString("phone");

                // Set user details in request attributes
                request.setAttribute("fullName", fullName);
                request.setAttribute("email", email);
                request.setAttribute("phone", phone);

                // Forward the request to a JSP page for displaying the details
                request.getRequestDispatcher("userDetails.jsp").forward(request, response);
            } else {
                // User not found in the database
                out.println("<h2>User not found in the database.</h2>");
            }

            // Close resources
            resultSet.close();
            preparedStatement.close();
            connection.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
