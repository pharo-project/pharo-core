update30614
	"self new update30614"
	self withUpdateLog: '11873 when deleting a class, the packages that have extension in it are not dirty
	https://pharo.fogbugz.com/f/cases/11873
	
12269 Add support for easily centering a window
	https://pharo.fogbugz.com/f/cases/12269
	'.
	self loadTogether: self script269 merge: false.
	self flushCaches.
