package no.bekk.mobil.controller.klient;

import no.bekk.mobil.controller.klient.service.StudentkafeService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
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
    public ModelAndView hentStudentkafe(@PathVariable int kafeId, SitePreference sitePreference) {
        if (sitePreference == SitePreference.MOBILE) {
            return new ModelAndView("mobil/mobilVisStudentkafe", "studentkafe", studentkafeService.hentStudentkafe(kafeId));
        } else {
            return new ModelAndView("desktop/desktopVisStudentkafe", "studentkafe", studentkafeService.hentStudentkafe(kafeId));
        }
    }

    @RequestMapping(value = "studentkafe/", method = RequestMethod.GET)
    public ModelAndView visAlleStudentkafeer(SitePreference sitePreference) {
        if (sitePreference == SitePreference.MOBILE) {
            return new ModelAndView("mobil/mobilVisAlleStudentkafeene", "studentkafene", studentkafeService.hentAlleStudentkafeene());
        } else {
            return new ModelAndView("desktop/desktopVisAlleStudentkafeene", "studentkafene", studentkafeService.hentAlleStudentkafeene());
        }
    }

    @RequestMapping(value = "/device", method = RequestMethod.GET)
    public ModelAndView home(SitePreference sitePreference) {
        ModelAndView mav = new ModelAndView();
        if (sitePreference == SitePreference.MOBILE) {
            mav.setViewName("mobil/mobile");
            String msg = "Hello mobile user!";
            LOG.info(msg);
            mav.addObject("message", msg);
            return mav;
        } else {
            String msg = "Hello desktop user!";
            LOG.info(msg);
            mav.setViewName("desktop");
            mav.addObject("message", msg);
            return mav;
        }
    }
}