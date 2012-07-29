public
doSilently: aBlock
	"Perform the block, and ensure that no system notification are broadcasted while doing so."

	silenceLevel := silenceLevel + 1.
	SystemAnnouncer uniqueInstance suspendAllWhile: [
		^[aBlock value] ensure: [silenceLevel > 0 ifTrue: [silenceLevel := silenceLevel - 1] ] ]