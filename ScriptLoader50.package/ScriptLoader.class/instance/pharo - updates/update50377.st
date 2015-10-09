update50377
	"self new update50377"
	self withUpdateLog: '16689 FileList: remove some usage of deprecated classes (StandardFileStream)
	https://pharo.fogbugz.com/f/cases/16689

16733 Canvas>>#reset calls two methods, neither of them exists
	https://pharo.fogbugz.com/f/cases/16733

16748 inline installation code for restoring the original CM
	https://pharo.fogbugz.com/f/cases/16748'.
	self loadTogether: self script50377 merge: false.
	self flushCaches.
