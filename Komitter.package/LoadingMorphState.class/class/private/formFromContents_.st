formFromContents: aByteArray
	| size |
	
	size := self size.
	^ Form
		extent: size@size
		depth: 32
		fromArray: aByteArray 
		offset: 0@0