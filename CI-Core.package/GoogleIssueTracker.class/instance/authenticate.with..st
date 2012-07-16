login
authenticate: aUserEmailAddress with: aPasswordString
	user := GoogleUser email: aUserEmailAddress.
	token := user authenticateService: self googleServiceName with: aPasswordString.