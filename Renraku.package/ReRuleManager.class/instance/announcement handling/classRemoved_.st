classRemoved: aClassRemovedAnnouncement

	(methodRules isNil and: classRules isNil) ifTrue: [ ^ self ].
	(aClassRemovedAnnouncement classRemoved includesBehavior: RBLintRule) ifFalse: [ ^ self ].
	((methodRules noneSatisfy: [ :rule |
		rule class == aClassRemovedAnnouncement classAffected ]) and: [  
	classRules anySatisfy: [ :rule |
		rule class == aClassRemovedAnnouncement classAffected ]]) ifTrue: [ ^ self ].

	self reset