update50468
	"self new update50468"
	self withUpdateLog: '17111 RBPatternParser and cascade messages
	https://pharo.fogbugz.com/f/cases/17111

17122 Allow watchpoints on variables
	https://pharo.fogbugz.com/f/cases/17122

17120 Improve the UI for seeing watchpoints
	https://pharo.fogbugz.com/f/cases/17120

17118 debug menu in Nautilus source text pane when in class definition state.
	https://pharo.fogbugz.com/f/cases/17118'.
	self loadTogether: self script50468 merge: false.
	
RBScanner initialize.
	self flushCaches.
