update30767
	"self new update30767"
	self withUpdateLog: '12892 DiskFileSystemTest>>#testEntryAt
	https://pharo.fogbugz.com/f/cases/12892

12890 Spotlight with package names opens Nautilus with nil sourceTextArea
	https://pharo.fogbugz.com/f/cases/12890

'.
	self loadTogether: self script420 merge: false.
	self flushCaches.
