string: aString emphasis: emphasis
	"This is an old method that is mainly used by old applications"

	emphasis isNumber ifTrue:
		[Halt halt: 'Numeric emphasis is not supported'.
		"But if you proceed, we will do our best to give you what you want..."
		^ self string: aString runs: (RunArray new: aString size withAll: 
			(Array with: (TextFontChange new fontNumber: emphasis)))].
	^ self string: aString attributes: emphasis