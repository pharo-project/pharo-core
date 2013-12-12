includes: aNode
	^ self = aNode complexContents or: [ self contents anySatisfy: [ :each | each includes: aNode ] ]