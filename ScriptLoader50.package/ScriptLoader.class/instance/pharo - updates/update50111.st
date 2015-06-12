update50111
	"self new update50111"
	self withUpdateLog: '15761 remove package Tool-Browser-Old
	https://pharo.fogbugz.com/f/cases/15761

14614 FileList is not working
	https://pharo.fogbugz.com/f/cases/14614

15640 Call to obsolete method in LinearGradientPaint class
	https://pharo.fogbugz.com/f/cases/15640'.
	self loadTogether: self script50111 merge: false.
	self loadConfiguration: 'Athens' version: '3.5'.
ScriptLoader new unloadPackageNamed: 'Tool-Browser-Old'.
	self flushCaches.
