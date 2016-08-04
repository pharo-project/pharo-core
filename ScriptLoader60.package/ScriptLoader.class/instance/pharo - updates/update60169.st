update60169
	"self new update60169"
	self withUpdateLog: '18861 TaskbarMorph reports damage outside its own area
	https://pharo.fogbugz.com/f/cases/18861

18868 Announcements subscription should supports exclusion like exceptions by minus
	https://pharo.fogbugz.com/f/cases/18868

18867 MetaceloPackageSpec workingCopyNameFor call name which could lead to deprecation warning when current version is array
	https://pharo.fogbugz.com/f/cases/18867

18865 can not open critics browser on a package from nautilus package pane menu
	https://pharo.fogbugz.com/f/cases/18865'.
	self loadTogether: self script60169 merge: false.
	self flushCaches.
