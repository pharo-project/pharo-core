update50081
	"self new update50081"
	self withUpdateLog: '15529 add Character space to the special km single Keycombination class
	https://pharo.fogbugz.com/f/cases/15529

15657 Empty UDP packets are not sent
	https://pharo.fogbugz.com/f/cases/15657

15665 Remove ComposableModel>>#instantiateModels:s senders in Manifest-CriticBrowser
	https://pharo.fogbugz.com/f/cases/15665

15629 Remove ComposableModel>>#instantiateModels:s senders in HudsonBuildTools20
	https://pharo.fogbugz.com/f/cases/15629

15650 Remove ComposableModel>>#instantiateModels:s senders in Spec-Tools
	https://pharo.fogbugz.com/f/cases/15650

15634 TestRunner refers to categories and should use packages instead
	https://pharo.fogbugz.com/f/cases/15634'.
	self loadTogether: self script50081 merge: false.
	
KMRepository reset.
	self flushCaches.
