measureWidth
	|width|
	
	width := 0.
	
	self tabSelectorMorph tabs do: [ :each |
		(each label isKindOf: GLMButton) ifTrue:[
	 		width := width + each label measureWidth + each layoutInset left + each layoutInset right.
		]
		ifFalse: [ 
			width := width + each width.
		]
	].

	self headerMorph ifNotNil: [
		self headerMorph submorphs do: [ :each |
			(each = self tabSelectorMorph) not ifTrue: [ 
				width := width + each width.
			]
		]
	].

	^ width.