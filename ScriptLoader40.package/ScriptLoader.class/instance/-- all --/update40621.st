update40621
	"self new update40621"
	self withUpdateLog: '15935 Backport 4.0: Renaming a package just by changing upper/lowercase removes the package
	https://pharo.fogbugz.com/f/cases/15935'.
	self loadTogether: self script621 merge: false.
	self flushCaches.
