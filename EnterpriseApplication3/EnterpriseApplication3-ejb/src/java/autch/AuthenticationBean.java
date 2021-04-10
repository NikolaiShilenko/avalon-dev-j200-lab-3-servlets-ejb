package autch;

import javax.annotation.PostConstruct;
import javax.ejb.Stateful;

/**
 *
 * @author Administrator
 */
@Stateful
public class AuthenticationBean implements AuthenticationBeanLocal, LoginData {
    
    private boolean clientStatus;
    private int showCounter;
    
    @PostConstruct
    void init() {
        clientStatus = false;
        showCounter = 0;
        System.out.println("---> AuthenticationBean has been created...");
    }
    
    @Override
    public boolean login(String login, String psw) {
        clientStatus = login.equals(LOGIN) && psw.equals(PSW);
        return clientStatus;
    }
    
    @Override
    public String getMessage(String login) {
        if (clientStatus && ++showCounter <= 3 && login.equalsIgnoreCase(LOGIN)) {
            return login + " requested a message " + showCounter + " times";
        } else {
            clientStatus = false;
            showCounter = 0;
            return "You need to log in again";
        }
    }
    
}
