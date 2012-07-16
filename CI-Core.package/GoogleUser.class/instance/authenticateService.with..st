authentification
authenticateService: aGoogleServiceName with: aPasswordString
	" I create a new GoogleToken which is used for identifikation.
	aGoogleServiceName: a google service name. see http://code.google.com/apis/gdata/faq.html#clientlogin
	aPasswordString: a password for this user
	"
	
	^ GoogleToken service: aGoogleServiceName user: self password: aPasswordString