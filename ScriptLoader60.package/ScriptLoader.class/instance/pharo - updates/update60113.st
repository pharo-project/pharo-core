update60113
	"self new update60113"
	self withUpdateLog: '18599 use sendsAnySelectorOf: in RBBadMessageRule
	https://pharo.fogbugz.com/f/cases/18599

18593 Remove Pharo references to Smalltalk evaluate:
	https://pharo.fogbugz.com/f/cases/18593'.
	self loadTogether: self script60113 merge: false.
	self flushCaches.
