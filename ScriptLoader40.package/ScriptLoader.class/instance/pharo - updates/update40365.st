update40365
	"self new update40365"
	self withUpdateLog: '14459 removed reintroduced translated message to addTitle: message argument
	https://pharo.fogbugz.com/f/cases/14459

14460 Move translated for Setting label: into label: and description: to description: 
	https://pharo.fogbugz.com/f/cases/14460

'.
	self loadTogether: self script365 merge: false.
	self flushCaches.
self cleanRepositories.
