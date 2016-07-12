update60148
	"self new update60148"
	self withUpdateLog: '18739 CompiledMethod sourceNodeForPC is not working for primitives
	https://pharo.fogbugz.com/f/cases/18739

18738 Context sourceNodeExecuted could fail when first line is block
	https://pharo.fogbugz.com/f/cases/18738'.
	self loadTogether: self script60148 merge: false.
	self flushCaches.
