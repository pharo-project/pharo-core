pharo - updates
update20255
	"self new update20255"
	self withUpdateLog: '- remove wrong System Package'.
	self loadTogether: self script242 merge: false.
	ScriptLoader new unregisterPackage: 'System'.
	self flushCaches.
