package control.actions;

import java.sql.SQLException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;


import com.brainysoftware.captcha.CaptchaUtil;
import com.opensymphony.xwork2.ActionSupport;

import control.dao.UserDAO;

public class RegistAction extends ActionSupport implements ServletRequestAware{

	private static final long serialVersionUID = -812052655553890142L;

	private String username,password,email,gender,country;
	private String word;
    private String hashCookieName = "hash";
    private HttpServletRequest httpServletRequest;
	
 
    public String getHashCookieName() {
        return hashCookieName;
    }
    public void setHashCookieName(String hashCookieName) {
        this.hashCookieName = hashCookieName;
    }
    public String getWord() {
        return word;
    }
    public void setWord(String word) {
        this.word = word;
    }
    public void setServletRequest(HttpServletRequest httpServletRequest) {
        this.httpServletRequest = httpServletRequest;
    }

	public String execute() throws ClassNotFoundException, SQLException{
		Cookie[] cookies = httpServletRequest.getCookies();
        String hash = null;
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals(hashCookieName)) {
                hash = cookie.getValue();
                break;
            }
        }
		
		UserDAO ud=new UserDAO();
		
		int i=ud.addUser(this);
		if(hash!=null && i>0 && CaptchaUtil.validate(word, hash)){
			return "success";
		}
		return "error";
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
