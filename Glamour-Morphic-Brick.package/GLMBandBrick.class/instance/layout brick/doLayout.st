doLayout
	
	self layoutChildren.

	self subbricks do: [ :each | each isBrick ifTrue: [ each doLayout ] ]