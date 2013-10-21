update30512
	"self new update30512"
	self withUpdateLog: '11962 Small Morphic-Core critic clean
	https://pharo.fogbugz.com/f/cases/11962
	
11921 add #isClass and #isClassOrTrait
	https://pharo.fogbugz.com/f/cases/11921
'.
	self loadTogether: self script167 merge: false.
	self flushCaches.
