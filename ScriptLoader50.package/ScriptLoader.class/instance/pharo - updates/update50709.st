update50709
	"self new update50709"
	SmalltalkImage compilerClass: Compiler.
.
	self withUpdateLog: '18052 Reformatting a method should never break the code
	https://pharo.fogbugz.com/f/cases/18052

'.
	self loadTogether: self script50709 merge: false.
	SmalltalkImage compilerClass: OpalCompiler.
#('BlueInk-Core' 'BlueInk-Tests') do: [ :pckgName | 
	(RPackageOrganizer default packageNamed: pckgName)
		classes do: [ :cl | cl compileAll ] ].
	self flushCaches.
self cleanRepositories.
