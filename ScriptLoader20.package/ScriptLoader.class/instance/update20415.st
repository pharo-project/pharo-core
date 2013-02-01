pharo - updates
update20415
	"self new update20415"
	self withUpdateLog: 'Issue 7017:	Code Duplication in UIManager>>#request:regex: and MorphicUIManager>>#request:regex: and
	http://code.google.com/p/pharo/issues/detail?id=7017
	
Issue 7020:	Named String Interpolation for String>>#format:
	http://code.google.com/p/pharo/issues/detail?id=7020
	
Issue 7022:	remove defaultImageHandler and defaultGZipHandler
	http://code.google.com/p/pharo/issues/detail?id=7022'.
	self loadTogether: self script394 merge: false.
	self flushCaches.
