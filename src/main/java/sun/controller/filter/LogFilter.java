package sun.controller.filter;

import javax.servlet.*;
import java.io.IOException;
import java.util.Date;

public class LogFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // 获取初始化参数
        String testParam = filterConfig.getInitParameter("test-param");
        //打印初始化参数
        System.out.println("Test Param: " + testParam);
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException,
            ServletException {
        // 获取客户端ip地址
        String ipAddress = request.getRemoteAddr();
        // 输出ip地址及当前时间
        System.out.println("IP " + ipAddress + ", Time "
                + new Date().toString());

        // 传递请求道过滤器链
        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {

    }
}
