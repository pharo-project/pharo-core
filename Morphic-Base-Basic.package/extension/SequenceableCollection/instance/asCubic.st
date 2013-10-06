asCubic
	"Convert this point array to a Cubic object"
	[self size = 4] assert.
	[self allSatisfy: [:each | each isPoint]] assert.
	^ Cubic withAll: self