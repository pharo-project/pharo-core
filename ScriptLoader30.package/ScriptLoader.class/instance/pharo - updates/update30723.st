update30723
	"self new update30723"
	self withUpdateLog: '12719 Creating Unnamed Package Kills Nautilus
	https://pharo.fogbugz.com/f/cases/12719

12718 rpackage not reorganising properly moved classes
	https://pharo.fogbugz.com/f/cases/12718
'.
	self loadTogether: self script376 merge: false.
	self flushCaches.
