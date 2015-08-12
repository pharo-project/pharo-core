update50222
	"self new update50222"
	self withUpdateLog: '16158 Do not announce ClassCommented when its the same string
	https://pharo.fogbugz.com/f/cases/16158

16145 CTRL + S doesnt work anymore to commit after written a message
	https://pharo.fogbugz.com/f/cases/16145

16162 echo is not used in VTermOutputDriver
	https://pharo.fogbugz.com/f/cases/16162

16165 Array>>#storeOnStream: not used and broken
	https://pharo.fogbugz.com/f/cases/16165'.
	self loadTogether: self script50222 merge: false.
	self flushCaches.
