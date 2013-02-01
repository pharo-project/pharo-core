private
ok
	| pharoUser newName newAddress |
	
	(pharoUser := user contents) ifNil: [ ^ self ].

	newName := userName getText asString asSymbol.
	newAddress := gravatarAddress getText.
	pharoUser username = newName ifFalse: [ pharoUser username: newName ].
	(newAddress ~= originalEmail and: [ self isValidAddressMail: newAddress ])
		ifTrue: [ 
			pharoUser setUserName: newAddress forGroup: #gravatar.
			pharoUser updateGravatarFor: newAddress ].