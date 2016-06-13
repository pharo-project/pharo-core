update60081
	"self new update60081"
	self withUpdateLog: '18448 Rubric: "Do not use #ifNotNilDo:ifNil:,  #ifNil:ifNotNilDo:, #ifNotNilDo:"
	https://pharo.fogbugz.com/f/cases/18448

18468 Use readOnlyQueue when reading source files
	https://pharo.fogbugz.com/f/cases/18468'.
	self loadTogether: self script60081 merge: false.
	
SourceFiles close; ensureOpen .
	self flushCaches.
