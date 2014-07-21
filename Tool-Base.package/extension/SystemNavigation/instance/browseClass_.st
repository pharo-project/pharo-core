browseClass: aBehavior
	| targetClass |
	targetClass := aBehavior isMeta
				ifTrue: [aBehavior theNonMetaClass]
				ifFalse: [aBehavior ].
	^ Smalltalk tools browser
		fullOnClass: targetClass selector: nil