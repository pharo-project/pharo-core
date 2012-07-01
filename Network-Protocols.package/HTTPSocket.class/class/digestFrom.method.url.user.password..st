digest
digestFrom: sock method: method url: url user: user password: password
	"RFC2069"
	| auth fields realm nonce uri a1 a2 response |
	sock responseCode = '401' ifFalse: [^nil].
	auth := sock getHeader: 'www-authenticate'.
	(auth asLowercase beginsWith: 'digest') ifFalse: [^nil].

	fields := (((auth allButFirst: 6) findTokens: ', 	') collect: [:ea |
		(ea copyUpTo: $=) asLowercase -> (ea copyAfter: $=) withoutQuoting]) as: Dictionary.

	realm := fields at: 'realm'.
	nonce := fields at: 'nonce'.
	uri := url readStream upToAll: '://'; skipTo: $/; skip: -1; upTo: $#.
	a1 := self md5Hash: user, ':', realm, ':', password.
	a2 := self md5Hash: method, ':', uri.
	a1 ifNil: [^nil "no MD5 support"].
	response := self md5Hash: a1, ':', nonce, ':', a2.

	^String streamContents: [:digest |
		digest
			nextPutAll: 'username="', user, '"';
			nextPutAll: ', realm="', realm, '"';
			nextPutAll: ', nonce="', nonce, '"';
			nextPutAll: ', uri="', uri, '"';
			nextPutAll: ', response="', response, '"'.
		fields at: 'opaque' ifPresent: [:opaque |
			digest nextPutAll: ', opaque="', opaque, '"'].
	]
