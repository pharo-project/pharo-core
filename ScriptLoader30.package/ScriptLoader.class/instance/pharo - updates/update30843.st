update30843
	"self new update30843"
	self withUpdateLog: '- cut MC history. Saves 5MB image size'.
	self loadTogether: self script105 merge: false.
	MCWorkingCopy allManagers do:  [ :each | 
    each ancestry ancestors do:  [  :eachAncestor | 
        eachAncestor instVarNamed: 'ancestors' put: nil ] ].
	self flushCaches.
