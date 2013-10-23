update30518
	"self new update30518"
	self withUpdateLog: '11976 clean up class side #groupsManager method Nautilus
	https://pharo.fogbugz.com/f/cases/11976

11977 #fixObsoleteReferences should call #flushCache on all changes CMs
	https://pharo.fogbugz.com/f/cases/11977'.
	self loadTogether: self script173 merge: false.
	self flushCaches.
