update60184
	"self new update60184"
	self withUpdateLog: '18940 simplify deferFlushDuring:
	https://pharo.fogbugz.com/f/cases/18940

18942 workaround: fix adding ivars to classes with class vars
	https://pharo.fogbugz.com/f/cases/18942

18939 New critic for catching redundant periods after statements
	https://pharo.fogbugz.com/f/cases/18939'.
	self loadTogether: self script60184 merge: false.
	self flushCaches.
