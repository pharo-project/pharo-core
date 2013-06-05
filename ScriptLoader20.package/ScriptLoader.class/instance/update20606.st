pharo - updates
update20606
	"self new update20606"
	self withUpdateLog: '10415 Integrate 2.0: 10411 flush after nextChunkPut:
	https://pharo.fogbugz.com/f/cases/10415'.
	self loadTogether: self script579 merge: false.
	self flushCaches.
