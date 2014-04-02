printPath: aPath on: aStream
	| hasDrive |
	aPath isRoot ifTrue: [  ^self ].    "effectively Windows root is empty string"
	aPath segments first first = $: ifTrue: [ ^ aStream nextPut: self delimiter  ]. "as tagged in #pathFromString:  "

	hasDrive := aPath segments first second = $: .	

	((aPath isAbsolute and: hasDrive not)) ifTrue: [ aStream nextPut: self delimiter ].
	aPath printOn: aStream delimiter: self delimiter.
	(((aPath isAbsolute) and: hasDrive) and: (aPath segments size = 1)) ifTrue: [ aStream nextPut: self delimiter  ].
