update50497
	"self new update50497"
	#(#ffiCall: #ffiCall:module: nbCall: nbCall:module:) 
	do: [ :eachSelector | (RBSelectorEnvironment referencesTo: eachSelector) methods do: #recompile ].
	self withUpdateLog: '17241 ffi-nb is not cleaning compiled methods. then they fail when platform changes
	https://pharo.fogbugz.com/f/cases/17241

'.
	self loadTogether: self script50497 merge: false.
	self flushCaches.
self cleanRepositories.
