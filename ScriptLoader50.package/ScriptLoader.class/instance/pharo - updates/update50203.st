update50203
	"self new update50203"
	self withUpdateLog: '16075 DiskStore>>basicEntry:path:nodesDo: should return on DirectoryDoesNotExist error
	https://pharo.fogbugz.com/f/cases/16075

12883 Critics browser rules categories selection
	https://pharo.fogbugz.com/f/cases/12883

'.
	self loadTogether: self script50203 merge: false.
	self flushCaches.
self cleanRepositories.
