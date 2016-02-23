style: aText
	aText size < 1000
        ifTrue: [ ^ self styler style: aText ].
	self styler styleInBackgroundProcess: aText