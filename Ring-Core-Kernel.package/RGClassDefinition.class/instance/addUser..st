managing pool users
addUser: aRGClassDefinition
	"The receiver registers the aRGClassDefinition as an user.  An reinforces its status as a shared pool."
	
	aRGClassDefinition isClass ifFalse:[ ^self ].
	(aRGClassDefinition theNonMetaClass poolDictNamed: self name) isNil
		ifTrue: [ aRGClassDefinition theNonMetaClass addPoolDictNamed: self name ].
	self isPool: true.
	self users add: aRGClassDefinition theNonMetaClass