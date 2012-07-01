downloading
askNamePassword
	"Authorization is required by the host site.  Ask the user for a userName and password.  Encode them and store under this realm.  Return false if the user wants to give up."

	| user pass |
	(self confirm: 'Host ', self asText, '
wants a different user and password.  Type them now?' orCancel: [false])
		ifFalse: [^ false].
	user := UIManager default request: 'User account name?' initialAnswer: ''.
	pass := UIManager default requestPassword: 'Password?'.
	Passwords at: realm put: (Authorizer new encode: user password: pass).
	^ true