target access
informTarget
	"Obtain a value from my contents, and tell my target about it.  The putSelector can take one argument (traditional) or two (as used by Croquet)"

	| newValue typeIn |
	(target notNil and: [putSelector notNil]) 
		ifTrue: 
			[typeIn := contents.
			(newValue := self valueFromContents) ifNotNil: 
					[self checkTarget.
					putSelector numArgs = 1 
						ifTrue: [target perform: putSelector with: newValue].
					putSelector numArgs = 2 
						ifTrue: 
							[target 
								perform: putSelector
								with: newValue
								with: self].
					target isMorph ifTrue: [target changed]].
			self fitContents.
			(format == #default and: [newValue isNumber]) 
				ifTrue: [self setDecimalPlacesFromTypeIn: typeIn]]