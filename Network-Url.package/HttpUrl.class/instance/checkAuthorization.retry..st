downloading
checkAuthorization: webDocument retry: retryBlock
	"authorization failed if webDocument is a String"
	| oldRealm i end encoded |
	((webDocument isString)
		and: [(webDocument beginsWith: 'HTTP/1.0 401')
			or: [webDocument beginsWith: 'HTTP/1.1 401']])
	ifFalse: [^self].

	oldRealm := realm.
	i := webDocument findString: 'realm="'.
	i = 0 ifTrue: [^self].
	end := webDocument indexOf: $" startingAt: i.
	realm := webDocument copyFrom: i+7 to: end.
	"realm := (webDocument findTokens: '""') at: 2."
	Passwords ifNil: [Passwords := Dictionary new].
	encoded := Passwords at: realm ifAbsent: [nil].
	(oldRealm ~= realm) & (encoded ~~ nil) 
		ifTrue: [^ retryBlock value]
		ifFalse: ["ask the user"
			self askNamePassword ifTrue: [^ retryBlock value]]