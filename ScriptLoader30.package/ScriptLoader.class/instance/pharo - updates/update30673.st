update30673
	"self new update30673"
	SpecDebugActionButton 
    addInstVarNamed: 'removeMe';
    removeInstVarNamed: 'removeMe'.
.
	self withUpdateLog: '12574 SpecDebugActionButton has a bad Layout
	https://pharo.fogbugz.com/f/cases/12574
	
12575 Add support for Git repo	
	https://pharo.fogbugz.com/f/cases/12575'.
	self loadTogether: self script326 merge: false.
	self flushCaches.
