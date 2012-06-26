*filesystem-memory
inMemory
	"This method provides compatibility with the original Filesystem interface"
	self deprecated: 'Use #memory' on: '3 April 2012' in: 'Pharo 1.4'.
	^ self memory