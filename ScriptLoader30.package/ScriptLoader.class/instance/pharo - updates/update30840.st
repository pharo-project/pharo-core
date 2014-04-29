update30840
	"self new update30840"
	self withUpdateLog: '11934 Last Modified Classed group in Nautilus does not work
	https://pharo.fogbugz.com/f/cases/11934

13235 PharoSourcesCondenser: fix commentStamp to use class name
	https://pharo.fogbugz.com/f/cases/13235
	
13234 After writing a new sources file, TClass class side methods have no source pointer
	https://pharo.fogbugz.com/f/cases/13234
'.
	self loadTogether: self script102 merge: false.
	self flushCaches.
