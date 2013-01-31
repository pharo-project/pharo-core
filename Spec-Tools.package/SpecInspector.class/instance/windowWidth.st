private
windowWidth
	
	^ windowWidth ifNil: [ 
		windowWidth := self columnWidth +10.
		owner ifNotNil: [ windowWidth := windowWidth + owner windowWidth - 6 ].
		windowWidth ]