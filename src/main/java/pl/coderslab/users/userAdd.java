package pl.coderslab.users;

import pl.coderslab.entity.User;
import pl.coderslab.entity.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "userAdd", urlPatterns = "/user/add")
public class userAdd extends HttpServlet {
  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp)
      throws ServletException, IOException {
    req.setCharacterEncoding("UTF-8");
    resp.setContentType("text/html");
    resp.setCharacterEncoding("UTF-8");
    User user = new User();
    user.setUserName(req.getParameter("userName"));
    user.setEmail(req.getParameter("userEmail"));
    user.setPassword(req.getParameter("userPassword"));
    UserDao userDao = new UserDao();
    userDao.create(user);
    resp.sendRedirect(req.getContextPath() + "/user/list");


  }

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp)
      throws ServletException, IOException {
    req.setCharacterEncoding("UTF-8");
    resp.setContentType("text/html");
    resp.setCharacterEncoding("UTF-8");
    getServletContext().getRequestDispatcher("/users/add.jsp").forward(req,resp);
  }
}
