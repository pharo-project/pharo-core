GC
allocationsBetweenGC: anInteger
	"allocations between GCs (read-write)"
	^ self parameterAt: 5 put: anInteger