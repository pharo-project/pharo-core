tests
testIpPortUrlPath
	"self debug: #testIpPortUrlPath"
	
	self assert: (HTTPSocket  ip: #[127 0 0 1] port: 8080 urlPath: '/beam') = '127.0.0.1:8080/beam'