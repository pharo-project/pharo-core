hasPragmaNamed: aSymbol
	^ self pragmas anySatisfy: [ :pragma | pragma selector = aSymbol ]