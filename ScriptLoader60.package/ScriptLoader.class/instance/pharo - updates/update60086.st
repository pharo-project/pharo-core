update60086
	"self new update60086"
	self withUpdateLog: '18484 instance variable refactoring without instance variables
	https://pharo.fogbugz.com/f/cases/18484

18489  remove more old deprecated methods
	https://pharo.fogbugz.com/f/cases/18489

18488 remove "recover lost changes..."
	https://pharo.fogbugz.com/f/cases/18488

18486 remove some methods deprecated in Pharo 5
	https://pharo.fogbugz.com/f/cases/18486'.
	self loadTogether: self script60086 merge: false.
	self flushCaches.
