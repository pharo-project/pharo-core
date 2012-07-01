digest
digestFor: serverText method: method url: url user: user password: password
	"RFC2069"
	| sock |
	sock := HTTPSocket new. "header decoder is on instance side"
	sock header: (serverText readStream upToAll: String crlf, String crlf).
	^self digestFrom: sock method: method url: url user: user password: password