as yet unclassified
blockCode
	^ block
		ifNil: ['']
		ifNotNil: [ blockSource ifNil: [blockSource := String 
			streamContents: [:s |  block decompile 
				statements 
					do: [:stmt | stmt printOn: s indent: 0]
					separatedBy: [s nextPutAll: '.', String cr]]]]