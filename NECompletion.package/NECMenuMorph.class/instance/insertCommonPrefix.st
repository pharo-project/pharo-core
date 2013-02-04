actions
insertCommonPrefix
	"Return value: true if the user input has been handled, regardless of whether a prefix was inserted"

	| prefix |
	context model isEmpty ifTrue: [^ false].
	context model entries size = 1
		ifTrue: [ ^ self insertSelected ].
	prefix := context model commonPrefix.
	prefix size > controller model contents size
		ifTrue: [ self insertCompletion: prefix ].
	^ true