update50638
	"self new update50638"
	self withUpdateLog: '17806 Make Metacello rules optional in Versionner
	https://pharo.fogbugz.com/f/cases/17806

17816 SystemSettings should be last in the startupList of SessionManager
	https://pharo.fogbugz.com/f/cases/17816

17813 TransformationMorph rightClick behavior is broken
	https://pharo.fogbugz.com/f/cases/17813'.
	self loadTogether: self script50638 merge: false.
	self loadConfiguration: 'Versionner' version: '2.13.9'.self flushCaches.
