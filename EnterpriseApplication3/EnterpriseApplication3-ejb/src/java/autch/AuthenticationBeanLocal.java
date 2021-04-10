package autch;

import javax.ejb.Local;

/**
 *
 * @author Administrator
 */
@Local
public interface AuthenticationBeanLocal {

    boolean login(String login, String psw);

    String getMessage(String login);
    
}
