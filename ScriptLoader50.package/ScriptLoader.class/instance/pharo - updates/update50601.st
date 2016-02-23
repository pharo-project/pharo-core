update50601
	"self new update50601"
	self withUpdateLog: '17674 catalog command line installer needs to resume on warning
	https://pharo.fogbugz.com/f/cases/17674

16020 Syntax Highlighting Rubric: First shows non-highlighted text, then color. Looks slow
	https://pharo.fogbugz.com/f/cases/16020'.
	self loadTogether: self script50601 merge: false.
	self loadConfiguration: 'Catalog' version: '0.11.1'.self flushCaches.
