update60028
	"self new update60028"
	self withUpdateLog: '18297 RBSplitCascadeRefactoring broken
	https://pharo.fogbugz.com/f/cases/18297

18277 Add Class comments to Refactoring-Core-Refactorings classes
	https://pharo.fogbugz.com/f/cases/18277

18299 Add Class comments to Refactoring-Core-Supportclasses
	https://pharo.fogbugz.com/f/cases/18299

18293 Add a comment to Collection>>#stdev
	https://pharo.fogbugz.com/f/cases/18293

18294 Remove Object >> #noteSelectionIndex:for:
	https://pharo.fogbugz.com/f/cases/18294'.
	self loadTogether: self script60028 merge: false.
	self flushCaches.
