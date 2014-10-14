measureWidth
	|width|
	
	width := 0.
	((self tabSelectorMorph tabs collect: #label) flatCollect: #submorphs) do: [ :each |
		width := width + ((each isKindOf: GLMButton) 
			ifTrue:[ each measureWidth ]
			ifFalse: [ each width ]) ].

	self headerMorph ifNotNil: [
		self headerMorph submorphs do: [ :each |
			(each = self tabSelectorMorph) not ifTrue: [ 
				width := width + each width ] ] ].

	^ width.