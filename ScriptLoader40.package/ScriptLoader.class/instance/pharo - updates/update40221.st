update40221
	"self new update40221"
	self withUpdateLog: '13997 Small code critic clean of Collections-Streams
	https://pharo.fogbugz.com/f/cases/13997

13992 NautilusRefactoring stores into method argument
	https://pharo.fogbugz.com/f/cases/13992

13994 AJx86AssemblerTests>>testRegistersOf:(asm is shadowed)
	https://pharo.fogbugz.com/f/cases/13994

'.
	self loadTogether: self script221 merge: false.
	self flushCaches.
self cleanRepositories.
