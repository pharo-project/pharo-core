construction
add: aString selector: aSymbol argument: arg

	^ self add: aString
		target: defaultTarget
		selector: aSymbol
		argumentList: (Array with: arg)
