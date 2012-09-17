package no.bekk.mobil.controller.klient;

import no.bekk.mobil.controller.klient.service.StudentkafeService;
import org.apache.log4j.Logger;
import org.mortbay.log.Log;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mobile.device.Device;
import org.springframework.mobile.device.site.SitePreference;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class KlientController {
    private Logger LOG = Logger.getLogger(KlientController.class);
    @Autowired
    private StudentkafeService studentkafeService;

    @RequestMapping(value = "studentkafe/{kafeId}", method = RequestMethod.GET)
    public ModelAndView hentStudentkafe(@PathVariable int kafeId) {
        LOG.info("Kafeid" + kafeId);
        return new ModelAndView("visStudentkafe", "studentkafe", studentkafeService.hentStudentkafe(kafeId));
    }

    @RequestMapping(value = "studentkafe/", method = RequestMethod.GET)
    public ModelAndView visAlleStudentkafeer() {
        return new ModelAndView("visAlleStudentkafeene", "studentkafene", studentkafeService.hentAlleStudentkafeene());
    }

    @RequestMapping(value = "/device", method = RequestMethod.GET)
    public ModelAndView home(SitePreference sitePreference, Device device) {
        ModelAndView mav = new ModelAndView();
        if (sitePreference == SitePreference.MOBILE) {
            // prepare mobile view for rendering
            Log.info("sitepref mobile");
        } else {
            // prepare normal view for rendering
            Log.info("normal");
        }
        if (device.isMobile()) {
            mav.setViewName("mobile");
            String msg = "Hello mobile user!";
            Log.info(msg);
            mav.addObject("message", msg);
        } else {
            String msg = "Hello desktop user!";
            Log.info(msg);
            mav.setViewName("desktop");
            mav.addObject("message", msg);
        }

        return mav;
    }
}
