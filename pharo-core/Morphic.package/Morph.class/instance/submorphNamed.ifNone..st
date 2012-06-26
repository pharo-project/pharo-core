submorphs-accessing
submorphNamed: aName ifNone: aBlock 
	"Find the first submorph with this name, or a button with an action selector of that name"

	
	self submorphs do: 
			[:button | | sub args | 
			(button respondsTo: #actionSelector) 
				ifTrue: [button actionSelector == aName ifTrue: [^button]].
			((button respondsTo: #arguments) and: [(args := button arguments) notNil]) 
				ifTrue: [(args at: 2 ifAbsent: [nil]) == aName ifTrue: [^button]].
			(button isAlignmentMorph) 
				ifTrue: [(sub := button submorphNamed: aName ifNone: [nil]) ifNotNil: [^sub]]].
	^aBlock value