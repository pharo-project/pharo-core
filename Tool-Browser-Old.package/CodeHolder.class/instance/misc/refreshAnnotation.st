refreshAnnotation
	"If the receiver has an annotation pane that does not bear unaccepted edits, refresh it"

	self dependents
		detect: [ :m | (m isKindOf: PluggableTextMorph) and: [ m getTextSelector == #annotation ] ]
		ifFound: [ :aPane | 
			aPane hasUnacceptedEdits
				ifFalse: [ aPane update: #annotation ] ]