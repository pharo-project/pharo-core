update60141
	"self new update60141"
	self withUpdateLog: '17958 Add examples to the Symbol class comment
	https://pharo.fogbugz.com/f/cases/17958

18618 Better additional comment for primitive: 79 error: ec usage
	https://pharo.fogbugz.com/f/cases/18618

18697 Automatic deprecation refactoring needs to take traits into account
	https://pharo.fogbugz.com/f/cases/18697

18700 SistaV1 bytecode: fix for Opal tests to not crash the image
	https://pharo.fogbugz.com/f/cases/18700'.
	self loadTogether: self script60141 merge: false.
	self flushCaches.
