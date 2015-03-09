update40545
	"self new update40545"
	self withUpdateLog: '15049 Move endianess methods from collections to graphics package
	https://pharo.fogbugz.com/f/cases/15049

15051 Remove Spec extension methods from String
	https://pharo.fogbugz.com/f/cases/15051

15059 Cleaning up System-Support
	https://pharo.fogbugz.com/f/cases/15059

15052 Remove dependency String -> LanguageConverter 
	https://pharo.fogbugz.com/f/cases/15052

15103 return unchanged argument in asMutator if argument is a mutator
	https://pharo.fogbugz.com/f/cases/15103

'.
	self loadTogether: self script545 merge: false.
	self flushCaches.
self cleanRepositories.
