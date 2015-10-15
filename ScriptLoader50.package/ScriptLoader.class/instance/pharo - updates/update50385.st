update50385
	"self new update50385"
	self withUpdateLog: '16770 Create a basic version of checking methods in LintRules
	https://pharo.fogbugz.com/f/cases/16770

16785 Replace the usages of #smalltalkCode in OpalTools
	https://pharo.fogbugz.com/f/cases/16785

16525 Nautilus leaking SystemAnnouncements
	https://pharo.fogbugz.com/f/cases/16525'.
	self loadTogether: self script50385 merge: false.
	self flushCaches.
