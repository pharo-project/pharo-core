update40626
	"self new update40626"
	
SmalltalkImage compilerClass: Compiler.
	self withUpdateLog: '17057 BackPort Pharo4: 13854 frameSize calculated wrongly for #lineSegmentsDo:
	https://pharo.fogbugz.com/f/cases/17057

17047 Backport pharo4: 17040 Morph HalosEnabled variable is not use.
	https://pharo.fogbugz.com/f/cases/17047'.
	self loadTogether: self script626 merge: false.
	
SmalltalkImage compilerClass: OpalCompiler.
	self flushCaches.
