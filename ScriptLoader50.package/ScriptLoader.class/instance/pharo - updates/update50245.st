update50245
	"self new update50245"
	self withUpdateLog: '15774 Make Spec using RubPluggableTextMorph instead of PluggableTextMorph
	https://pharo.fogbugz.com/f/cases/15774

16259 Replace some other PluggableTextMorph usage
	https://pharo.fogbugz.com/f/cases/16259

16258 Kernel should not depend on Tool-Base
	https://pharo.fogbugz.com/f/cases/16258'.
	self loadTogether: self script50245 merge: false.
	self flushCaches.
