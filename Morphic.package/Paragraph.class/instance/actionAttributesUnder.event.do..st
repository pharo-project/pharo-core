editing
actionAttributesUnder: aClickPoint event: anEvent do: aBlock
	|startBlock|
	
	startBlock := self characterBlockAtPoint: aClickPoint.
	(text attributesAt: startBlock stringIndex forStyle: textStyle) 
		select: [ :attribute| attribute mayActOnEvent: anEvent ]
		thenDo: [:attribute | | target range boxes| 
			"find the boxes for the current attribute range"
			range := text rangeOf: attribute startingAt: startBlock stringIndex.
			boxes := self selectionRectsFrom: (self characterBlockForIndex: range first) 
						to: (self characterBlockForIndex: range last+1).
			(boxes detect: [:each | each containsPoint: aClickPoint] ifNone: [nil])
				ifNotNil: [ aBlock cull: attribute cull: boxes ]]