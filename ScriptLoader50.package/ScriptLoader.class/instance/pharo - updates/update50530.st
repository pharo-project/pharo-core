update50530
	"self new update50530"
	self withUpdateLog: '17395 Integrate GTools 3.8
	https://pharo.fogbugz.com/f/cases/17395'.
	self loadTogether: self script50530 merge: false.
	
[ScriptLoader new loadConfiguration: 'GToolkitCore' version: '3.8'] on: Warning do: [:ex | ex resume:true ].
.
	self flushCaches.
