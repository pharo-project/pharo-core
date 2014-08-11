update40163
	"self new update40163"
	self withUpdateLog: '13821 Concentrate tools shortcuts in a single class
	https://pharo.fogbugz.com/f/cases/13821

13097 Keymapping: Cmd-n Cmd-c gives error message
	https://pharo.fogbugz.com/f/cases/13097

13027 KeyCombination pretty printing is broken
	https://pharo.fogbugz.com/f/cases/13027

'.
	self loadTogether: self script163 merge: false.
	self flushCaches.
self cleanRepositories.
