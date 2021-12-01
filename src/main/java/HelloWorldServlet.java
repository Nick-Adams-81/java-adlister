import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="HelloServlet", urlPatterns="/helloworld")
public class HelloWorldServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        String name = req.getParameter("name");
        // if the name is null, it means that "name" was not present in the query
        // string, and here we'll provide a default value
        if (name == null) {
            name = "World!";
        } else if (name.equals("bgates")) {
            res.sendRedirect("https://microsoft.com");
            return;
        }
        // pass the value of the name variable to the view, and send the request
        // forward to the hello.jsp file
        req.setAttribute("name", name);
        req.getRequestDispatcher("/hello.jsp").forward(req, res);
    }
}
