update60149
	"self new update60149"
	self withUpdateLog: '18390 System version should be "Pharo 6.0" instead of "Pharo6.0" and PharoWelcomePage should not hard code version
	https://pharo.fogbugz.com/f/cases/18390

18748 OpalCompiler Tests: OCNewCompilerWithChangesFunctionalTests should set encoder to OpalEncoderForV3PlusClosures
	https://pharo.fogbugz.com/f/cases/18748

15688 Remove ComposableModel>>#instantiateModels:s senders in Spec-Examples
	https://pharo.fogbugz.com/f/cases/15688'.
	self loadTogether: self script60149 merge: false.
	self flushCaches.
