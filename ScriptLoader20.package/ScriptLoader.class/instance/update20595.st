pharo - updates
update20595
	"self new update20595"
	Nautilus useOldStyleKeys: true.
	self withUpdateLog: '10196 Change shortcuts default settings of 2.0 to the traditional ones
UI: Misc | Milestone: Pharo2.0
	https://pharo.fogbugz.com/f/cases/10196
	
10195 Replace ugly Keymappings API on:do:
	https://pharo.fogbugz.com/f/cases/10195
	
10194 Backport to 2.0: special objects array recreation crash
	https://pharo.fogbugz.com/f/cases/10194
	
10185 Backport 2.0: 10173 ClassBuilder cannot safely modify a class why using it
	https://pharo.fogbugz.com/f/cases/10185
	
10174 Backport 2.0 Issue 10162: multiple selection of methods in method pane ...
	https://pharo.fogbugz.com/f/cases/10174
'.
	self loadTogether: self script569 merge: false.
	self flushCaches.
