update30819
	"self new update30819"
	self withUpdateLog: '13171 When browsing a hierarchy, Nautilus changes the view unexpectedly
	https://pharo.fogbugz.com/f/cases/13171

13178 Nautilus groups do not work, when "show groups on top" is disabled in System Settings
	https://pharo.fogbugz.com/f/cases/13178

13136 Pharo3Theme scrollbars looking like dead without visual indicators
	https://pharo.fogbugz.com/f/cases/13136

13194 ClassHierarchyTest>>#testSubclasses failing
	https://pharo.fogbugz.com/f/cases/13194
'.
	self loadTogether: self script472 merge: false.
	ClassHierarchyTest fixSubclasses.
	self flushCaches.
