installIconStylerFor: anItem
	"icons styler are only supported for method definitions (not nil / not for comment definitions (those may occure
	for comment or general string searches))"

	(self isMethodDefinition: anItem)
		ifFalse: [ ^ self ].
		
	IconStyler allSubclassesDo: [ :styleClass | 
			styleClass shouldStyle
				ifTrue: [ anItem ast acceptVisitor: (styleClass style: self textModel) ] ]