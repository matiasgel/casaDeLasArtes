package ar.edu.untdf

class LoginController {

    def index() { }
}

class LoginCommand {
	String username
	String password
	static constraints = {
		username(blank: false, minSize: 6)
		password(blank: false, minSize: 6)
	}
}
