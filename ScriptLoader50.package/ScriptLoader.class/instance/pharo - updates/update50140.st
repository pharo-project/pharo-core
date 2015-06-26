update50140
	"self new update50140"
	self withUpdateLog: '15851 update Rubric to support edition in place of string morph
	https://pharo.fogbugz.com/f/cases/15851

15850 Editable StringMorph revival
	https://pharo.fogbugz.com/f/cases/15850'.
	self loadTogether: self script50140 merge: false.
	self loadConfiguration: 'Rubric' version: '1.9'.self flushCaches.
