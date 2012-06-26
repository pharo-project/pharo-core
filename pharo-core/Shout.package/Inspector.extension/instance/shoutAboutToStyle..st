*Shout-Styling
shoutAboutToStyle: aPluggableShoutMorphOrView 
	aPluggableShoutMorphOrView getTextSelector == self trashSelector ifFalse: [ ^false ].
	aPluggableShoutMorphOrView classOrMetaClass: self object class.
	^ true