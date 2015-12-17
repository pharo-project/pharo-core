update50506
	"self new update50506"
	ScriptLoader new removeAllHTTPRepositories:{'http://source.squeakfoundation.org/FFI/'}.
ScriptLoader new installRepository: 'http://smalltalkhub.com/mc/Pharo/FFI/main' for: 'AST-FFI-Pharo50Compatibility'.
ScriptLoader new installRepository: 'http://smalltalkhub.com/mc/Pharo/FFI/main' for: 'FFI-Kernel'.
ScriptLoader new installRepository: 'http://smalltalkhub.com/mc/Pharo/FFI/main' for: 'FFI-MacOS'.
ScriptLoader new installRepository: 'http://smalltalkhub.com/mc/Pharo/FFI/main' for: 'FFI-Pools'.
ScriptLoader new installRepository: 'http://smalltalkhub.com/mc/Pharo/FFI/main' for: 'FFI-Tests'.
ScriptLoader new installRepository: 'http://smalltalkhub.com/mc/Pharo/FFI/main' for: 'FFI-Unix'.
ScriptLoader new installRepository: 'http://smalltalkhub.com/mc/Pharo/FFI/main' for: 'FFI-Win32'.
	self withUpdateLog: '17256 clean up #becomeCompact
	https://pharo.fogbugz.com/f/cases/17256

17265 Spur Migration - RGClassDefinitionTest is depending on the order of keys for asserting some tests
	https://pharo.fogbugz.com/f/cases/17265

17264 The text value of MailMessage has changed the order of the fields. 
	https://pharo.fogbugz.com/f/cases/17264

'.
	self loadTogether: self script50506 merge: false.
	self flushCaches.
self cleanRepositories.
