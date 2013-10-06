timeToRunWithoutGC
	"Answer the number of milliseconds taken to execute this block without GC time."
 
	^ Smalltalk vm totalGCTime + self timeToRun -  Smalltalk vm totalGCTime
