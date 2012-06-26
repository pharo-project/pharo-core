private
display
	| canvas |
	canvas := Display getCanvas.
	self contours do:[:ptArray|
		1 to: ptArray size by: 3 do:[:i|
			canvas line: (ptArray at: i) // 10
					to: (ptArray at: i+2) // 10
					width: 1 color: Color black.
		].
	].