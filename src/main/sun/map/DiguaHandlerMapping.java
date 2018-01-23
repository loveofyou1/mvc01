package sun.map;

import org.springframework.web.servlet.HandlerExecutionChain;
import org.springframework.web.servlet.HandlerMapping;
import sun.handler.DiguaHandler;
import sun.handler.MaidiguaHandler;
import sun.handler.ShoudiguaHandler;

import javax.servlet.http.HttpServletRequest;

public class DiguaHandlerMapping implements HandlerMapping {
    @Override
    public HandlerExecutionChain getHandler(HttpServletRequest request) throws Exception {
        String url = request.getRequestURI().toString();
        String method = request.getMethod();
        if (url.startsWith("/tudou")) {
            if (method.equalsIgnoreCase("GET")) {
                return new MaidiguaHandler(new Object());
            } else if (method.equalsIgnoreCase("POST")) {
                return new ShoudiguaHandler(new Object());
            } else {
                return new DiguaHandler(new Object());
            }
        }
        return null;
    }
}
