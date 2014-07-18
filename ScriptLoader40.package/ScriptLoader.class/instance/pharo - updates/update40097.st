update40097
	"self new update40097"
	self withUpdateLog: '13584 Forward code generation for Globals and Class Vars to meta object
	https://pharo.fogbugz.com/f/cases/13584

13586 Class Variables should be ClassVariables, not Globals
	https://pharo.fogbugz.com/f/cases/13586

'.
	self loadTogether: self script97 merge: false.
	Smalltalk allClasses do: [ :class |
    class classVariables do: [ :var |
        class classPool declareVariable:  (var key => ClassVariable) from: Undeclared.
]].
OpalCompiler recompileAll.
	self flushCaches.
self cleanRepositories.
