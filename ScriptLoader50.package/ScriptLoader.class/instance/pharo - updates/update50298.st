update50298
	"self new update50298"
	self withUpdateLog: '14426 BalloonTests package should be Balloon-Tests
	https://pharo.fogbugz.com/f/cases/14426

14437 NetworkTests package should be Network-Tests
	https://pharo.fogbugz.com/f/cases/14437

16449 update bootstrap dependencies v2
	https://pharo.fogbugz.com/f/cases/16449

11461 TabModel not really removed tabs
	https://pharo.fogbugz.com/f/cases/11461'.
	self loadTogether: self script50298 merge: false.
	
RPackage organizer unregisterPackageNamed:  'BalloonTests' .
RPackage organizer unregisterPackageNamed:  'NetworkTests' .
	self flushCaches.
