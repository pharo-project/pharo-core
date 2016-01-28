update50553
	"self new update50553"
	
(MCPackage named: 'GTInspector-Help') unload.	
[ScriptLoader new loadConfiguration: 'GToolkitCore' version: '3.10'] on: Warning do: [:ex | ex resume:true].
	self withUpdateLog: '17458 Integrate GTools version 3.10
	https://pharo.fogbugz.com/f/cases/17458'.
	self loadTogether: self script50553 merge: false.
	self flushCaches.
