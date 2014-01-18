update30705
	"self new update30705"
	self withUpdateLog: '12675 Add NativeBoost class >>#isAvailable
	https://pharo.fogbugz.com/f/cases/12675

12674 Fix NBExternalTypeValue initialization
	https://pharo.fogbugz.com/f/cases/12674

12673 Missing method to get the corresponding MCPackage from a RPackage
	https://pharo.fogbugz.com/f/cases/12673

'.
	self loadTogether: self script358 merge: false.
	self flushCaches.
