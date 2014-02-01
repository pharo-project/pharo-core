update30734
	"self new update30734"
	self withUpdateLog: '12761 Class comments missing for FileSystem package
	https://pharo.fogbugz.com/f/cases/12761

11674 MNU: receiver of #> is nil
	https://pharo.fogbugz.com/f/cases/11674

12762 Class comments missing in UIManager
	https://pharo.fogbugz.com/f/cases/12762

12756 Class comments missing in System-* package
	https://pharo.fogbugz.com/f/cases/12756

'.
	self loadTogether: self script387 merge: false.
	self flushCaches.
