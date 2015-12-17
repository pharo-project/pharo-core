update50507
	"self new update50507"
	self withUpdateLog: '17258 remove "super initialize" from CompilationContext and CCcompilationContext
	https://pharo.fogbugz.com/f/cases/17258

17266 Compact classes cleanup
	https://pharo.fogbugz.com/f/cases/17266

17262 AST-FFI-Pharo50Compatibility has wrong repository associated
	https://pharo.fogbugz.com/f/cases/17262'.
	self loadTogether: self script50507 merge: false.
	ScriptLoader new  removeAllHTTPRepositories:{'http://source.squeakfoundation.org/FFI/'}.
ScriptLoader new installRepository: 'http://smalltalkhub.com/mc/Pharo/FFI/main' for: 'AST-FFI-Pharo50Compatibility'.
ScriptLoader new installRepository: 'http://smalltalkhub.com/mc/Pharo/FFI/main' for: 'FFI-Kernel'.
ScriptLoader new installRepository: 'http://smalltalkhub.com/mc/Pharo/FFI/main' for: 'FFI-MacOS'.
ScriptLoader new installRepository: 'http://smalltalkhub.com/mc/Pharo/FFI/main' for: 'FFI-Pools'.
ScriptLoader new installRepository: 'http://smalltalkhub.com/mc/Pharo/FFI/main' for: 'FFI-Tests'.
ScriptLoader new installRepository: 'http://smalltalkhub.com/mc/Pharo/FFI/main' for: 'FFI-Unix'.
ScriptLoader new installRepository: 'http://smalltalkhub.com/mc/Pharo/FFI/main' for: 'FFI-Win32'.
	self flushCaches.
self cleanRepositories.
