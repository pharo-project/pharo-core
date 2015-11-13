update50443
	"self new update50443"
	self withUpdateLog: '17006 Remove usage of when:send:to in NECMenuMorph 
	https://pharo.fogbugz.com/f/cases/17006

17003 Remove usage of triggerEvent: #extent ...  in ImageMorph
	https://pharo.fogbugz.com/f/cases/17003

16925 Monticello does not take into account RPackage model
	https://pharo.fogbugz.com/f/cases/16925'.
	self loadTogether: self script50443 merge: false.
	self flushCaches.
