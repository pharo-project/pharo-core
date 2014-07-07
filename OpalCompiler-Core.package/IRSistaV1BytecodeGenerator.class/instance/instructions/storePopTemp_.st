storePopTemp: index

	| interval |
	stack pop.

	"single store pop"
	interval := Bytecodes at: #storePopTemporaryVariable.
	index <= interval size ifTrue: [
		^ self nextPut: (interval at: index )
	].

	"extended version"
	index <= 64 ifTrue: [
		self nextPut: (Bytecodes at: #extendedStorePopTemporaryVariable).
		^ self nextPut: (1 "temp" << 6) + index - 1.
	].

	self tooManyVars: 'temps (>64)'