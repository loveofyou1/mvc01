package sun.handler.adpter;

import org.springframework.web.servlet.HandlerAdapter;
import org.springframework.web.servlet.ModelAndView;
import sun.controller.MaidiguaController;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MaidiguaHandlerAdpter implements HandlerAdapter {
    @Override
    public boolean supports(Object handler) {
        return handler instanceof MaidiguaController;
    }

    @Override
    public ModelAndView handle(HttpServletRequest request, HttpServletResponse response, Object handler) throws
            Exception {
        return ((MaidiguaController) handler).maidigua(request, response);
    }

    @Override
    public long getLastModified(HttpServletRequest request, Object handler) {
        return -1L;
    }
}
