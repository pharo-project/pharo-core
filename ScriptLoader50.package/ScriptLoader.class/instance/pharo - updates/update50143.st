update50143
	"self new update50143"
	self withUpdateLog: '15396 Refactor Duplicated #itemFromPoint: (3 slightly-differing implementations)
	https://pharo.fogbugz.com/f/cases/15396

15863 Update Glamour to load last version of Rubric
	https://pharo.fogbugz.com/f/cases/15863

15867 Fix shortcut for smart suggestions in Nautilus
	https://pharo.fogbugz.com/f/cases/15867'.
	self loadTogether: self script50143 merge: false.
	self loadConfiguration: 'GlamourCore' version: '3.1.5'.self flushCaches.
