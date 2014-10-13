update40299
	"self new update40299"
	DangerousClassNotifier disable.
.
	self withUpdateLog: '14208 Move ByteArray close to WordArray, delete package Collection-Arrayed
	https://pharo.fogbugz.com/f/cases/14208

'.
	self loadTogether: self script299 merge: false.
	DangerousClassNotifier enable.
ScriptLoader new deletePackage: 'Collections-Arrayed'.
	self flushCaches.
self cleanRepositories.
