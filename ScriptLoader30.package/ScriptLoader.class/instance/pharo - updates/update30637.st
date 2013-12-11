update30637
	"self new update30637"
	self withUpdateLog: '- Issue 12400. Split SmartSuggestions package
	https://pharo.fogbugz.com/f/cases/12400/
- Issue 12240. some RPackage tests have no separate package
	https://pharo.fogbugz.com/f/cases/12240/
- Isssue 12407 Rename Morphic-Base-Explorer into Morphic-Base-SimpleList
	https://pharo.fogbugz.com/f/cases/12407/'.
	self loadTogether: self script292 merge: false.
	self flushCaches.
