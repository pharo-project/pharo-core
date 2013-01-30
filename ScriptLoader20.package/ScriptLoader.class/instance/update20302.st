pharo - updates
update20302
	"self new update20302"
	self withUpdateLog: '6728: infinite recursion on startup preferences.Thanks to pharo.ulysse@gmail.com

http://code.google.com/feeds/issues/p/pharo


6723: Improve Collection StreamingThanks to pharo.ulysse@gmail.com

http://code.google.com/feeds/issues/p/pharo


6715: RPackageSet is not backwards compatibleThanks to pharo.ulysse@gmail.com

http://code.google.com/feeds/issues/p/pharo'.
	self loadTogether: self script289 merge: false.
	self flushCaches.
