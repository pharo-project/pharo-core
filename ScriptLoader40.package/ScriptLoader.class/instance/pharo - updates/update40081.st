update40081
	"self new update40081"
	self withUpdateLog: '13537 Merging some polymorph and spec to PluggableListMorph
	https://pharo.fogbugz.com/f/cases/13537

13495 deprecate #ifLocked: in PluggableTextMoprh
	https://pharo.fogbugz.com/f/cases/13495/
	
13522 Add Back SimpleSwicthMorph
	https://pharo.fogbugz.com/f/cases/13522'.
	self loadTogether: self script81 merge: false.
	self flushCaches.
self cleanRepositories.
