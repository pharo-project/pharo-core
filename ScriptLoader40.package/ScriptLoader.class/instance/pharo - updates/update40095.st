update40095
	"self new update40095"
	self withUpdateLog: '13552 First Class Variables: improve reflective API, ClassBuilder use objects, not string for Globals
	https://pharo.fogbugz.com/f/cases/13552

'.
	self loadTogether: self script95 merge: false.
	Smalltalk allClasses do: [ :class |
    class classPool associations do: [ :var |
        class classPool declareVariable:  (var key => GlobalVariable) from: Undeclared.
]].


Smalltalk globals associations do: [ :var |
        Smalltalk globals declareVariable:  (var key => GlobalVariable) from: Undeclared.
].
OpalCompiler recompileAll.
	self flushCaches.
self cleanRepositories.
