tests
testExpandUrl
	"self debug: #testExpandUrl"
	
	self assert: (HTTPSocket expandUrl: 'www.pharo-project.org' ip: #[127 0 0 1] port: 8080) = 'www.pharo-project.org'.
	self assert: (HTTPSocket expandUrl: '../beam' ip: #[127 0 0 1] port: 8080) = '127.0.0.1:8080/beam'.
	self assert: (HTTPSocket expandUrl: '/beam' ip: #[127 0 0 1] port: 8080) = '127.0.0.1:8080/beam'.