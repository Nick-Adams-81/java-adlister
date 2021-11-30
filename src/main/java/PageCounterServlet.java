import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name="page-counter", urlPatterns = "/counter")
public class PageCounterServlet extends HttpServlet {

    private int count = 0;

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {

        res.setContentType("text/html");
        PrintWriter out = res.getWriter();

            count++;
            out.println("<h1>You have visited this page " + count + " times </h1>");

    }

}
