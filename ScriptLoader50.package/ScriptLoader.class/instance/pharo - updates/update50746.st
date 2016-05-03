update50746
	"self new update50746"
	self withUpdateLog: '18150 AST-FFI-Pharo50Compatibility-EstebanLorenzano.1.mcz missing
	https://pharo.fogbugz.com/f/cases/18150/'.
	self loadTogether: self script50746 merge: false.
	self flushCaches.
self cleanRepositories.
