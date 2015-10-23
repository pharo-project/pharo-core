update50403
	"self new update50403"
	self withUpdateLog: '16835 Error when removing a trait in a class being browsed
	https://pharo.fogbugz.com/f/cases/16835

16841 MethodClassifier should classify on pragma
	https://pharo.fogbugz.com/f/cases/16841

16855 Class template mentions poolDictionary
	https://pharo.fogbugz.com/f/cases/16855'.
	self loadTogether: self script50403 merge: false.
	self flushCaches.
