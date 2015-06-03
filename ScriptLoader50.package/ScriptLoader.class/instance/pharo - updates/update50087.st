update50087
	"self new update50087"
	self withUpdateLog: '15684 reduce direct references to PharoClassInstaller
	https://pharo.fogbugz.com/f/cases/15684

15677 Remove ComposableModel>>#instantiateModels:s senders in Spec-Debugger
	https://pharo.fogbugz.com/f/cases/15677

15673 Remove ComposableModel>>#instantiateModels:s senders in Spec-PolyWidgets
	https://pharo.fogbugz.com/f/cases/15673'.
	self loadTogether: self script50087 merge: false.
	self flushCaches.
