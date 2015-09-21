update40622
	"self new update40622"
	self withUpdateLog: '10235 StandardFileStream>>compressFile cant create new compressed file
	https://pharo.fogbugz.com/f/cases/10235'.
	self loadTogether: self script622 merge: false.
	self flushCaches.
