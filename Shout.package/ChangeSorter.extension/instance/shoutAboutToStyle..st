*Shout-Styling
shoutAboutToStyle: aPluggableShoutMorphOrView 
	self shoutIsModeStyleable
		ifFalse: [^ false].
	self currentSelector
		ifNil: [^ false].
	aPluggableShoutMorphOrView classOrMetaClass: self selectedClassOrMetaClass.
	^ true