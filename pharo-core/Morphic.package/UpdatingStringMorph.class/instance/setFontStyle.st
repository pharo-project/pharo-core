editing
setFontStyle
	| aList reply style |
	aList := (TextSharedInformation select: [:anItem | anItem isKindOf: TextStyle]) 
				keys asOrderedCollection.
	reply := UIManager default chooseFrom: aList values: aList.
	reply ifNotNil: 
			[(style := TextStyle named: reply) ifNil: 
					[Beeper beep.
					^true].
			self font: style defaultFont]