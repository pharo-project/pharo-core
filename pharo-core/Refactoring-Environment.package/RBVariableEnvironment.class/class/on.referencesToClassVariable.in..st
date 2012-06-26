instance creation
on: anEnvironment referencesToClassVariable: aSymbol in: aClass 
	| newEnv definingClass assoc |
	newEnv := (self onEnvironment: anEnvironment)
				label: 'References to ''' , aSymbol , ''' in ' , aClass name;
				yourself.
	definingClass := aClass whichClassDefinesClassVar: aSymbol.
	assoc := definingClass bindingOf: aSymbol.
	definingClass withAllSubclassesDo: 
			[:cls | 
			(cls whichSelectorsReferTo: assoc) isEmpty 
				ifFalse: [newEnv addClass: cls classVariable: aSymbol]].
	^newEnv