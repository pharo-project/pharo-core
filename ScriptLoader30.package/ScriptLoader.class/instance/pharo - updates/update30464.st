update30464
	"self new update30464"
	self withUpdateLog: '11822 remove ClassCommentVersionBrowser
	https://pharo.fogbugz.com/f/cases/11822
	
11824 NewVersionBrowser: add #browseVersionsForClass: selector:
	https://pharo.fogbugz.com/f/cases/11824
	
11823 remove unneded builder methods (messagenames, messageset) from MorphicUIManager
	https://pharo.fogbugz.com/f/cases/11823
'.
	self loadTogether: self script119 merge: false.
	self flushCaches.
