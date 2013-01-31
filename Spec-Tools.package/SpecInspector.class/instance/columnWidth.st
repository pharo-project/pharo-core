private
columnWidth
	| min |
	
	min := list listItems 
				ifEmpty: [ 100 ]
				ifNotEmpty: [:items | 20+ ((items collectWithIndex: [:e :i | StandardFonts defaultFont widthOfString: (list wrapItem: e index: i) ]) max) ].
	^ ((StandardFonts defaultFont widthOfString: object contents printString) max: min) min: 300