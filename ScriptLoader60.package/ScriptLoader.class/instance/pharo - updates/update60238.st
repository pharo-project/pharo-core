update60238
	"self new update60238"
	self withUpdateLog: '18987 Extract asClass and friends in a separate package and deprecate
	https://pharo.fogbugz.com/f/cases/18987

19128 Deprecation: The method Object>>name called from KMRepository>>#addCategory: has been deprecated.
	https://pharo.fogbugz.com/f/cases/19128

19117 Another stab at iconNamed: cleaning...
	https://pharo.fogbugz.com/f/cases/19117'.
	self loadTogether: self script60238 merge: false.
	self flushCaches.
