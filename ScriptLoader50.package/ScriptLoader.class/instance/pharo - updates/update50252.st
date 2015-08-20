update50252
	"self new update50252"
	self withUpdateLog: '16268 SyntaxErrorNotification from styler for single double quotes
	https://pharo.fogbugz.com/f/cases/16268

16284 Compression should not depend on Graphics-Primtives
	https://pharo.fogbugz.com/f/cases/16284

16281 Collections should not depend on Multilingual-OtherLanguages
	https://pharo.fogbugz.com/f/cases/16281

16287 Transcript should not depend on Graphics-Primitives
	https://pharo.fogbugz.com/f/cases/16287'.
	self loadTogether: self script50252 merge: false.
	self flushCaches.
