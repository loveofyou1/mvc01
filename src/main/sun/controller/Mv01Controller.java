package sun.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.context.EnvironmentAware;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Mv01Controller {
    private final Log logger = LogFactory.getLog(Mv01Controller.class);

    //处理Head类型的“/”请求
    @RequestMapping(value = {"/"}, method = RequestMethod.HEAD)
    public String head() {
        return "go.jsp";
    }

    //处理GET类型的“/”和“/index"请求
    //@RequestMapping(value = {"/jsp", "/"}, method = RequestMethod.GET)
    public String index(Model model) throws Exception {
        logger.info("====processed by index");
        model.addAttribute("msg", "Go Go Go1!");
        return "go.jsp";
    }


}
