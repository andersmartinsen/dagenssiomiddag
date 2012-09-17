import org.mortbay.jetty.webapp.WebAppContext;


public class WebServer {
    private static final int PORT = 9080;

    public static void main(String[] args) throws Exception {
        org.mortbay.jetty.Server server = new org.mortbay.jetty.Server(PORT);
        server.addHandler(webAppContext());
        server.start();
    }

    private static WebAppContext webAppContext() {
        return new WebAppContext("src/main/webapp", "/springmobile");
    }
}
