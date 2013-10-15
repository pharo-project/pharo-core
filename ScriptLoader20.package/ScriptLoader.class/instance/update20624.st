pharo - updates
update20624
	"self new update20624"
	self withUpdateLog: '11872 PreferenceStartup raises an exception on StackVM 2.0 Version On Raspberry
	https://pharo.fogbugz.com/f/cases/11872
	
11853 Inst Var Pull Up does not work
	https://pharo.fogbugz.com/f/cases/11853
	
11859 Backport 2.0: Issue 11549 PluggableTextMorph closes completion menu on keydown
	https://pharo.fogbugz.com/f/cases/11859'.
	self loadTogether: self script597 merge: false.
	self flushCaches.
