removing
removeKey: key ifAbsent: aBlock

	"Here I do not do anything if absent not to perform the block twice"
	keys remove: key ifAbsent: [].
	^ super removeKey: key ifAbsent: aBlock 