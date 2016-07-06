update60139
	"self new update60139"
	self withUpdateLog: '16636 Rename layout to classLayout (step 4 deprecate)
	https://pharo.fogbugz.com/f/cases/16636

18449 Glamour: "Do not use #ifNotNilDo:ifNil:,  #ifNil:ifNotNilDo:, #ifNotNilDo:"
	https://pharo.fogbugz.com/f/cases/18449'.
	self loadTogether: self script60139 merge: false.
	self loadConfiguration: 'GlamourCore' version: '4.17'.self flushCaches.
