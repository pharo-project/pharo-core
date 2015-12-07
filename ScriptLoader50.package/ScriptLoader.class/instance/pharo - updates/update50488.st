update50488
	"self new update50488"
	self withUpdateLog: '17189 remove check for PluggableTextMorph in TextMorph>>#moudeDown:
	https://pharo.fogbugz.com/f/cases/17189

17145 remove watchpoint package
	https://pharo.fogbugz.com/f/cases/17145

16962 Code pane should not show all spaces selected when one is selected
	https://pharo.fogbugz.com/f/cases/16962'.
	self loadTogether: self script50488 merge: false.
	
ScriptLoader new unloadPackageNamed: 'Watchpoints'.
	self flushCaches.
