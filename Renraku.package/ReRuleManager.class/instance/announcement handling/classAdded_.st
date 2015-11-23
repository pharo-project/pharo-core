classAdded: aClassAddedAnnouncement 
	(methodRules isNil and: classRules isNil) ifTrue: [ ^ self ].
	(aClassAddedAnnouncement classAdded includesBehavior: RBLintRule) ifFalse: [ ^ self ].
	(aClassAddedAnnouncement classAdded canPerform: #name) ifFalse: [ ^ self ].

	self reset