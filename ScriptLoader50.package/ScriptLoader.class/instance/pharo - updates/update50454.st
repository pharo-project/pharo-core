update50454
	"self new update50454"
	
SmalltalkImage compilerClass: Compiler.
.
	self withUpdateLog: '13854 frameSize calculated wrongly for #lineSegmentsDo: 
	https://pharo.fogbugz.com/f/cases/13854

17055 simplify Breakpoint API and menu entries a little
	https://pharo.fogbugz.com/f/cases/17055

17052 Small cleanup GroupManager model
	https://pharo.fogbugz.com/f/cases/17052

17051 browsing a method directly via spotter does not show visualization of breakpoints if it has any breakpoint
	https://pharo.fogbugz.com/f/cases/17051'.
	self loadTogether: self script50454 merge: false.
	
SmalltalkImage compilerClass: OpalCompiler.
.
	self flushCaches.
