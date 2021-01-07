package pl.coderslab.user;

import pl.coderslab.entity.User;
import pl.coderslab.entity.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user/add")
public class UserAdd extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/users/add.jsp")
                .forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDao userDao = new UserDao();
        String name = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        User user = new User();
        user.setUserName(name);
        user.setEmail(email);
        user.setPassword(password);
        userDao.create(user);
        response.sendRedirect(request.getContextPath()+"/user/list");
    }
}
