update50503
	"self new update50503"
	self withUpdateLog: '17237 restore trait methods (spur migration)
	https://pharo.fogbugz.com/f/cases/17237

'.
	self loadTogether: self script50503 merge: false.
	self flushCaches.
self cleanRepositories.
