package sun.handler;

import org.springframework.web.servlet.HandlerExecutionChain;
import org.springframework.web.servlet.HandlerInterceptor;

public class MaidiguaHandler extends HandlerExecutionChain {
    public MaidiguaHandler(Object handler) {
        super(handler);
    }

    public MaidiguaHandler(Object handler, HandlerInterceptor... interceptors) {
        super(handler, interceptors);
    }
}
