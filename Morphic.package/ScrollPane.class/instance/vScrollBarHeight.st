geometry
vScrollBarHeight
	| h |

	h := bounds height - (2 * borderWidth).
	(retractableScrollBar not and: [self hIsScrollbarNeeded]) 
		ifTrue:[ h := h - self scrollBarThickness. ].
	
	^h
