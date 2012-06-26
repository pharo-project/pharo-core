displaying
setWindowTitle

	| title |
	shouldUpdateTitle ifFalse: [ ^ self ].
	title := self selectedClass 
				ifNil: [ self selectedPackage
							ifNil: [ self title ]
							ifNotNil: [: p | p name ]]
				ifNotNil: [:class |
					self selectedMethod
						ifNil: [ class name asString ]
						ifNotNil: [:method |
							method methodClass name asString, '>>#', method selector ]].
	window title: title.