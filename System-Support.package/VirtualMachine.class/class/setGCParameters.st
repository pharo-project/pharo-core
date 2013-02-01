accessing
setGCParameters
	"Adjust the VM's default GC parameters to avoid premature tenuring."

	self allocationsBetweenGC: 4000.  "do an incremental GC after this many allocations"
	self tenuringThreshold: 2000.  "tenure when more than this many objects survive the GC"
	self setGCBiasToGrowGCLimit: 16*1024*1024.
	self setGCBiasToGrow: 1.
