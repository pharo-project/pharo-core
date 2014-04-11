update30823
	"self new update30823"
	self withUpdateLog: '13190 -- all -- vs. --- all ---
	https://pharo.fogbugz.com/f/cases/13190

'.
	self loadTogether: self script476 merge: false.
	AllProtocol allInstances do: [ :each | each instVarNamed: #name put: AllProtocol defaultName  ].
	self flushCaches.
