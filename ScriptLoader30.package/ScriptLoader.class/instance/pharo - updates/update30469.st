update30469
	"self new update30469"
	self withUpdateLog: '11842 Trivia critic cleanup in Kernel
	https://pharo.fogbugz.com/f/cases/11842
	
11845 Do not use the *do: versions of #*ifNotEmpty*
	https://pharo.fogbugz.com/f/cases/11845
	
11843 Trivial critic cleanup in keychain
	https://pharo.fogbugz.com/f/cases/11843
'.
	self loadTogether: self script124 merge: false.
	self flushCaches.
