package ru.totalexx.contractlifemarch.handler;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import ru.totalexx.contractlifemarch.model.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PutUserInModel implements HandlerInterceptor {

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        if (modelAndView != null) {
            Object user = null;
            if (SecurityContextHolder.getContext().getAuthentication() != null)
                user = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
            modelAndView.addObject("_user", user);
        }
    }

}
