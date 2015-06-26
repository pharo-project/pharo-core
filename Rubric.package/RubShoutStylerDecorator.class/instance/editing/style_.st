style: aText
	aText size < self minTextSizeForStylingInBackground
		ifTrue: [ ^ self styler style: aText ].
	self styler styleInBackgroundProcess: aText