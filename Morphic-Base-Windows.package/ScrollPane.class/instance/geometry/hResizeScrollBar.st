hResizeScrollBar

	| topLeft h border |

	(self valueOfProperty: #noHScrollBarPlease ifAbsent: [false]) ifTrue: [^self].
	bounds ifNil: [ self fullBounds ].
	
	h := self scrollBarThickness.
	border := borderWidth.
	
	topLeft := retractableScrollBar
				ifTrue: [bounds bottomLeft + (border @ border negated)]
				ifFalse: [bounds bottomLeft + (border @ (h + border) negated)].

	hScrollBar bounds: (topLeft extent: self hScrollBarWidth@ h)
