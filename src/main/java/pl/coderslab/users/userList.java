package pl.coderslab.users;

import pl.coderslab.entity.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "userList", urlPatterns = "/user/list")
public class userList extends HttpServlet {

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp)
      throws ServletException, IOException {
    UserDao userDao = new UserDao();
    req.setAttribute("users", userDao.findAll());

    getServletContext().getRequestDispatcher("/user/list.jsp")
            .forward(req, resp);
  }
}
