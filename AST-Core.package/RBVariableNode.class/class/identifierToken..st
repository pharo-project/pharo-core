instance creation
identifierToken: anIdentifierToken 
	anIdentifierToken value = 'self'
		ifTrue: [ ^ RBSelfNode withToken: anIdentifierToken ].
	anIdentifierToken value = 'thisContext'
		ifTrue: [ ^ RBThisContextNode withToken: anIdentifierToken ].
	anIdentifierToken value = 'super'
		ifTrue: [ ^ RBSuperNode withToken: anIdentifierToken ].
	^ self withToken: anIdentifierToken