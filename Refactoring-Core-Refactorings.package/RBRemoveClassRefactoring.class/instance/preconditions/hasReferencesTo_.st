hasReferencesTo: aSymbol 
	| literal |
	literal := Smalltalk globals associationAt: aSymbol.
	RBBrowserEnvironment new classesDo: 
			[:each | 
			(classNames 
				includes: (each isMeta ifTrue: [each soleInstance] ifFalse: [each]) name) 
					ifFalse: 
						[(each whichSelectorsReferTo: literal) isEmpty ifFalse: [^true].
						(each whichSelectorsReferTo: aSymbol) isEmpty ifFalse: [^true]]].
	^false