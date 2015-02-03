allSubbricksDo: aBlock

	self subbricks do: [:each | 
		aBlock value: each.
		each isBrick ifTrue: [ each allSubbricksDo: aBlock ] ]