update50084
	"self new update50084"
	self withUpdateLog: '15671 remove OldClassBuilderAdapter
	https://pharo.fogbugz.com/f/cases/15671

15668 Old caseOf: patterns still in use
	https://pharo.fogbugz.com/f/cases/15668'.
	self loadTogether: self script50084 merge: false.
	
(#caseOf: senders, #caseOf:otherwise: senders) do: [ :each | each recompile ].
	self flushCaches.
