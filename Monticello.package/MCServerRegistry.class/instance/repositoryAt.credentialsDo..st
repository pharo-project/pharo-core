private
repositoryAt: urlString credentialsDo: aBlock


	| possibleMatches bestMatch |
	possibleMatches := registry associations select: [ :e | urlString beginsWith: e key ].
	possibleMatches isEmpty ifTrue: [ ^ aBlock value: '' value: '' ].
	bestMatch := possibleMatches inject: possibleMatches anyOne into: [ :last :new | 
		new key asUrl path size > last key asUrl path size
			ifTrue: [ new ]
			ifFalse: [ last ] ].
	^ aBlock value: bestMatch value username value: bestMatch value password.