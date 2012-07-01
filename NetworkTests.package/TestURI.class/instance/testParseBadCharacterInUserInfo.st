tests user info
testParseBadCharacterInUserInfo
	"self debug: #testParseBadCharacterInUserInfo"

	| uri uriString |
	uriString := 'scheme://$%%&**()!.@host/'.
	uri := URI fromString: uriString.
	self assert: (uri authority userInfo = '$%%&**()!.')