update30838
	"self new update30838"
	self withUpdateLog: '- fix the refs to PharoV3 sources in the downloader'.
	self loadTogether: self script100 merge: false.
	self flushCaches.
