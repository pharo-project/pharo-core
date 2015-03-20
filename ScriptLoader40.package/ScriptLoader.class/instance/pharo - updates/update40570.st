update40570
	"self new update40570"
	self withUpdateLog: '14890 Browsing a different class should select by default the previously browsed method
	https://pharo.fogbugz.com/f/cases/14890

15171 MNU: receiver of "getClass" is nil
	https://pharo.fogbugz.com/f/cases/15171

15168 add DelayNullScheduler
	https://pharo.fogbugz.com/f/cases/15168'.
	self loadTogether: self script570 merge: false.
	self flushCaches.
