update50487
	"self new update50487"
	self withUpdateLog: '17196 Remove check for event handler in #handlesMouseMove:
	https://pharo.fogbugz.com/f/cases/17196

17191 remove option #useAstColoring
	https://pharo.fogbugz.com/f/cases/17191

17079 no syntax highlighting in TimeProfilers code pane
	https://pharo.fogbugz.com/f/cases/17079'.
	self loadTogether: self script50487 merge: false.
	
PluggableTextMorph stylingClass: SHRBTextStyler.
	self flushCaches.
