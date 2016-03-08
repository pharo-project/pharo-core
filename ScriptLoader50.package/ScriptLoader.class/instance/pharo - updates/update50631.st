update50631
	"self new update50631"
	self withUpdateLog: '17766 StandardSystemFontsTest is either unfinised or obsolete
	https://pharo.fogbugz.com/f/cases/17766

17736 Growl raise debugger instead of a popup at startup
	https://pharo.fogbugz.com/f/cases/17736

17758 Rectangle>>#areasOutside: inconsistent return value
	https://pharo.fogbugz.com/f/cases/17758

17752 Point>>#asFloatPoint and Point>>#asIntegerPoint should not create new instances all the time. Add Point>>#isFloatPoint
	https://pharo.fogbugz.com/f/cases/17752'.
	self loadTogether: self script50631 merge: false.
	
ScriptLoader new deletePackage: 'Graphics-Fonts-Tests'.
	self flushCaches.
