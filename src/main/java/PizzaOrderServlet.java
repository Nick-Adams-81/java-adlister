import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="pizzaservlet", urlPatterns = "/pizza-order")
public class PizzaOrderServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        req.getRequestDispatcher("pizza.jsp").forward(req, res);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        if(req.getMethod().equalsIgnoreCase("post")) {
            String crust = req.getParameter("crust");
            String sauce = req.getParameter("sauce");
            String size = req.getParameter("size");
            String toppings = req.getParameter("toppings");
            String address = req.getParameter("address");


            System.out.println(crust + ", " + sauce + ", " + size + ", " + toppings + ", " + address);
            req.setAttribute("crust", crust);
            req.setAttribute("sauce", sauce);
            req.setAttribute("size", size);
            req.setAttribute("toppings", toppings);
            req.setAttribute("address", address);
            req.getRequestDispatcher("/pizza.jsp").forward(req, res);
        }

    }

}
