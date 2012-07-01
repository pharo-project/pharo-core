tests user info
testUserInfoOnlyHost
	"self debug: #testUserInfoOnlyHost"
	
	| uri uriString |
	uriString := 'scheme://@host/'.
	"Empty but not undefined userinfo."
	
	uri := URI fromString: uriString.
	self assert: (uri asString = uriString).
	self assert: (uri authority userInfo = '').