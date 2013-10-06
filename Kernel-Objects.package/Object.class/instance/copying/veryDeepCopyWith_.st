veryDeepCopyWith: deepCopier
	"Copy me and the entire tree of objects I point to.  An object in the tree twice is copied once, and both references point to him.  deepCopier holds a dictionary of objects we have seen.  Some classes refuse to be copied.  Some classes are picky about which fields get deep copied."
	| class index sub subAss new sup has mine |
	deepCopier references at: self ifPresent: [:newer | ^ newer]. 	"already did him"
	class := self class.
	class isMeta ifTrue: [^ self].		"a class"
	new := self shallowCopy.
	deepCopier references at: self put: new.	"remember"
	(class isVariable and: [class isPointers]) ifTrue: 
		[index := self basicSize.
		[index > 0] whileTrue: 
			[sub := self basicAt: index.
			(subAss := deepCopier references associationAt: sub ifAbsent: [nil])
				ifNil: [new basicAt: index put: (sub veryDeepCopyWith: deepCopier)]
				ifNotNil: [new basicAt: index put: subAss value].
			index := index - 1]].
	"Ask each superclass if it wants to share (weak copy) any inst vars"
	new veryDeepInner: deepCopier.		"does super a lot"

	"other superclasses want all inst vars deep copied"
	sup := class.  index := class instSize.
	[has := sup compiledMethodAt: #veryDeepInner: ifAbsent: [nil].
	has := has ifNil: [ false ] ifNotNil: [ true ].
	mine := sup instVarNames.
	has ifTrue: [index := index - mine size]	"skip inst vars"
		ifFalse: [1 to: mine size do: [:xx |
				sub := self instVarAt: index.
				(subAss := deepCopier references associationAt: sub ifAbsent: [nil])
						"use association, not value, so nil is an exceptional value"
					ifNil: [new instVarAt: index put: 
								(sub veryDeepCopyWith: deepCopier)]
					ifNotNil: [new instVarAt: index put: subAss value].
				index := index - 1]].
	(sup := sup superclass) == nil] whileFalse.
	(new isKindOf: HashedCollection) ifTrue: [ new rehash].	"force Sets and Dictionaries to rehash"
	^ new
