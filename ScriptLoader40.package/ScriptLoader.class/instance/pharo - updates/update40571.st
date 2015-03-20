update40571
	"self new update40571"
	self withUpdateLog: '15097 Monticello repository UI not bolding unloaded packages after Lazy MCVersionInfo integrated
	https://pharo.fogbugz.com/f/cases/15097

15179 Be able to browse dependent projects with Versionner
	https://pharo.fogbugz.com/f/cases/15179'.
	self loadTogether: self script571 merge: false.
	self loadConfiguration: 'Versionner' version: '2.9'.self flushCaches.
