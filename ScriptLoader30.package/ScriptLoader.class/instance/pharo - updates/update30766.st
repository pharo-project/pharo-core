update30766
	"self new update30766"
	self withUpdateLog: '12892 DiskFileSystemTest>>#testEntryAt
	https://pharo.fogbugz.com/f/cases/12892

12897 Settings Browser is slow when opened on a package
	https://pharo.fogbugz.com/f/cases/12897

'.
	self loadTogether: self script419 merge: false.
	self flushCaches.
