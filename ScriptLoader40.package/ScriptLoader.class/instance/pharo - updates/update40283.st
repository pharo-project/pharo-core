update40283
	"self new update40283"
	self withUpdateLog: '14159 Update Fuel
	https://pharo.fogbugz.com/f/cases/14159

14155 Replace Announcer>>#on:send:to:s senders in Morphic-Widgets-Extra
	https://pharo.fogbugz.com/f/cases/14155

14131 Improving some little tests in the system
	https://pharo.fogbugz.com/f/cases/14131

14117 merge menuSpec and menuItemSpec
	https://pharo.fogbugz.com/f/cases/14117

'.
	self loadTogether: self script283 merge: false.
	self flushCaches.
self cleanRepositories.
