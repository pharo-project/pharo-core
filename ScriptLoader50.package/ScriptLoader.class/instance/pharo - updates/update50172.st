update50172
	"self new update50172"
	self withUpdateLog: '6964 "Changes" in Monticello seems to compare to the latest in the cache 
	https://pharo.fogbugz.com/f/cases/6964

15976 Feature a buffer with offset type
	https://pharo.fogbugz.com/f/cases/15976

15978 disable fasttable
	https://pharo.fogbugz.com/f/cases/15978'.
	self loadTogether: self script50172 merge: false.
	
Nautilus useExperimentalFastTable: false. 
.
	self flushCaches.
