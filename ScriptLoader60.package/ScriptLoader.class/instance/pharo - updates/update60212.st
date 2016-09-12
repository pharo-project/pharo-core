update60212
	"self new update60212"
	self withUpdateLog: '19075 SmallLint tests failing after update
	https://pharo.fogbugz.com/f/cases/19075'.
	self loadTogether: self script60212 merge: false.
	self flushCaches.
