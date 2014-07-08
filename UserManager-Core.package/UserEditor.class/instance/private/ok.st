ok
	| pharoUser newName newAddress |
	(pharoUser := user value) ifNil: [ ^ self ].
	newName := userName getText asString asSymbol.
	newAddress := gravatarAddress getText.
	pharoUser username = newName
		ifFalse: [ pharoUser username: newName ].
	(newAddress ~= originalEmail and: [ self isValidAddressMail: newAddress ])
		ifFalse: [ ^ self ].
	pharoUser setUserName: newAddress forGroup: #gravatar.
	pharoUser updateGravatarFor: newAddress