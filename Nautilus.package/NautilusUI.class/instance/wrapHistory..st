history behavior
wrapHistory: anEntry
	| wrapper label separator |
	separator := ' >>#'.
	wrapper := anEntry key.
	wrapper showGroups
		ifTrue: [
			label := Text streamContents: [:s | 
				wrapper selectedGroup ifNotNil: [:g |
					s 
						<< ('G: ' asText addAttribute: TextEmphasis italic from: 1 to: 3) 
						<< (g name asText addAttribute: TextEmphasis italic from: 1 to: g name size).
				wrapper selectedClass ifNotNil: [:c | 
					s << separator << c name.
					wrapper selectedMethod ifNotNil: [:m | 
						s << separator << m asString ]]]]]
		ifFalse: [
			label := String streamContents: [:s | 
				wrapper selectedPackage ifNotNil: [:p |
					wrapper selectedClass ifNotNil: [:c | 
						s << c name.
						wrapper selectedMethod ifNotNil: [:m | 
							s << separator << m asString ]]]]].

	^ GoBackStringMorph contents: label