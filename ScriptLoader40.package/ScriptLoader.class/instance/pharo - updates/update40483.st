update40483
	"self new update40483"
	self withUpdateLog: '14879 CodeCritics does not allow to remove a critic when selecting the critics to be run
	https://pharo.fogbugz.com/f/cases/14879

14884 Add a menu to define the metaRepository as repository in MCBrowser
	https://pharo.fogbugz.com/f/cases/14884

14871 Date >> leap answer 1 or 0 and we want true or false
	https://pharo.fogbugz.com/f/cases/14871

14887 SmalltalkImage>>printOnElements: is dead code
	https://pharo.fogbugz.com/f/cases/14887

'.
	self loadTogether: self script483 merge: false.
	self flushCaches.
self cleanRepositories.
