startUp: booting
	booting ifFalse: [ ^ self ].
	
	"update session"
	Session := Smalltalk session
