import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet(name="login", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        req.getRequestDispatcher("/login.jsp").forward(req, res);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
        // session object
        HttpSession currentSession = req.getSession();

        String username = req.getParameter("username");
        String password = req.getParameter("password");
        if (username.equals("admin") && password.equals("password")) {
            currentSession.setAttribute("isAdmin", true);
            res.sendRedirect("/profile");
        } else if(username.equals("nick") && password.equals("password")) {
           currentSession.setAttribute("isAdmin", false);
           res.sendRedirect("/profile");
        } else {
            res.sendRedirect("/login");
        }
    }


}
