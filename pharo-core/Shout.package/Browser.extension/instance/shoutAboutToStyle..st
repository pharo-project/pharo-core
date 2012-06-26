*Shout-Styling
shoutAboutToStyle: aPluggableShoutMorphOrView 
	| type |
	self shoutIsModeStyleable
		ifFalse: [^ false].
	type := self editSelection.
	(#(#newMessage #editMessage #editClass #newClass ) includes: type)
		ifFalse: [^ false].
	aPluggableShoutMorphOrView
		classOrMetaClass: (type = #editClass
				ifFalse: [self selectedClassOrMetaClass]).
	^ true