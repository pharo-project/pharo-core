codeTextMorph
	^ self dependents
		detect: [ :dep | (dep isKindOf: PluggableTextMorph)
				and: [ dep getTextSelector == #contents ]]
		ifNone: []