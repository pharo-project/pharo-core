user-interface
findTextFieldMorph
	^self
		findDeepSubmorphThat: [:m |
			(m isKindOf: PluggableTextFieldMorph) and: [m getTextSelector = #findText]]
		ifAbsent: [] 