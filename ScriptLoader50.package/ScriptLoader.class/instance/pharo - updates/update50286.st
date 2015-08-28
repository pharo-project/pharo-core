update50286
	"self new update50286"
	self withUpdateLog: '16392 Should register WideString reader/writer to MCDataStream
	https://pharo.fogbugz.com/f/cases/16392

16408 Clean up around changes files
	https://pharo.fogbugz.com/f/cases/16408'.
	self loadTogether: self script50286 merge: false.
	self flushCaches.
