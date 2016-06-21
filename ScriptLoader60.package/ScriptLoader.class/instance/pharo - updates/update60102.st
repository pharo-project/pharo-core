update60102
	"self new update60102"
	self withUpdateLog: '18544 Replace Old encoders by new Zn encoders in FileSystem-Disk
	https://pharo.fogbugz.com/f/cases/18544

18549 Halt Icon Styler doesnt allow disabling the haltonce
	https://pharo.fogbugz.com/f/cases/18549

18547 EncoderForSistaV1 bug fix
	https://pharo.fogbugz.com/f/cases/18547'.
	self loadTogether: self script60102 merge: false.
	self flushCaches.
