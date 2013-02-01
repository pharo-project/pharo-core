labels
labelNamed: aNameOrLabel
	
	"directly use an object as label"
	aNameOrLabel isString ifFalse: [ 
		self assert: (labels at: aNameOrLabel name ) = aNameOrLabel.
		^ aNameOrLabel ].
	
	^ labels at: aNameOrLabel ifAbsentPut: [
		AJJumpLabel new
			name: aNameOrLabel 
		]