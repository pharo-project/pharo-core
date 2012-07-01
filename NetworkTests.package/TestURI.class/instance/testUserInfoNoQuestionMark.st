tests user info
testUserInfoNoQuestionMark
	"No ? in the userInfo; it turns everything into a query."
	"self debug: #testUserInfoNoQuestionMark"
	
	| uri uriString |
	"[scheme:][//authority][path][?query][#fragment]
	where authority can be [user-info@]host[:port]"
	
	uriString := 'scheme://user?info@host/'.
	uri := URI fromString: uriString.
	self assert: (uri asString = uriString).
	self assert: (uri authority host asString = 'user')