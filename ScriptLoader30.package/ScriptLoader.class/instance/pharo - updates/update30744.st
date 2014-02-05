update30744
	"self new update30744"
	self withUpdateLog: '12808 #testObsoleteClasses: AnObsoleteEyeContextInspector
	https://pharo.fogbugz.com/f/cases/12808

12817 Class comments missing for Polymorph-Widgets package
	https://pharo.fogbugz.com/f/cases/12817

12814 FTPConnectionException is not in use and should be moved to Deprecated30 package or renamed
	https://pharo.fogbugz.com/f/cases/12814

'.
	self loadTogether: self script397 merge: false.
	self flushCaches.
