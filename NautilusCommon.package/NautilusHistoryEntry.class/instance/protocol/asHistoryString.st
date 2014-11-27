asHistoryString
	| label separator |
	separator := ' >>#'.
	label := self showGroups
		ifTrue: [ 
			Text
				streamContents: [ :s | 
					self selectedGroup
						ifNotNil: [ :g | 
							s << ('G: ' asText addAttribute: TextEmphasis italic from: 1 to: 3)
								<< (g name asText addAttribute: TextEmphasis italic from: 1 to: g name size).
							self selectedClass
								ifNotNil: [ :c | 
									s << separator << c name.
									self selectedMethod ifNotNil: [ :m | s << separator << m asString ] ] ] ] ]
		ifFalse: [ 
			String
				streamContents: [ :s | 
					self selectedPackage
						ifNotNil: [ :p | 
							self selectedClass
								ifNotNil: [ :c | 
									s << c name.
									self selectedMethod ifNotNil: [ :m | s << separator << m asString ] ] ] ] ].
	^ label