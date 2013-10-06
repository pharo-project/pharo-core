update30391
	"self new update30391"
	self withUpdateLog: '11583 Removing TranslucentPattern and HighLightBitmap class vars of Color
	https://pharo.fogbugz.com/f/cases/11583'.
	self loadTogether: self script183 merge: false.
	 Color
  removeClassVarNamed: 'HighLightBitmaps';
  removeClassVarNamed: 'TranslucentPatterns';
  compileAll.    .
	self flushCaches.
