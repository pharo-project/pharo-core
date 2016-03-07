update50629
	"self new update50629"
	self withUpdateLog: '17745 RBParser>>parseLiteralByteArrayObject doesnt consume token on error
	https://pharo.fogbugz.com/f/cases/17745

17762 move DisplayScreen related DummyUIManager messages to the Graphics-Display Objects package
	https://pharo.fogbugz.com/f/cases/17762

17760 QualityAssistant v2.4.0
	https://pharo.fogbugz.com/f/cases/17760'.
	self loadTogether: self script50629 merge: false.
	self loadConfiguration: 'QualityAssistant' version: 'v2.4.0'.self flushCaches.
