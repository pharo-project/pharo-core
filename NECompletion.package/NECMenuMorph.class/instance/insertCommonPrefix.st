actions
insertCommonPrefix
	| prefix |
	context model isEmpty ifTrue: [^ false].
	context model entries size = 1
		ifTrue: [ ^ self insertSelected ].
	prefix := context model commonPrefix.
	"if there is no common prefix or the prefix is smaller than the token abort"
	(prefix isNil or: [ context completionToken beginsWith: prefix ]) ifTrue: [ ^ false ].
	self insertCompletion: prefix.
	^ true