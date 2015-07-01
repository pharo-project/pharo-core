update50149
	"self new update50149"
	self withUpdateLog: '15879 No more stepping and huge buttons on a right pane for browsing variables
	https://pharo.fogbugz.com/f/cases/15879'.
	self loadTogether: self script50149 merge: false.
	self flushCaches.
