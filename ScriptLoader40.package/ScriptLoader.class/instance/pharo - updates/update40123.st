update40123
	"self new update40123"
	self withUpdateLog: '13539 receiver of "NodeModel" is Nil
	https://pharo.fogbugz.com/f/cases/13539

13681 replace Smalltalk tools shortcuts with Morph shortcutHandler
	https://pharo.fogbugz.com/f/cases/13681

13682 Pack of simple refactorings
	https://pharo.fogbugz.com/f/cases/13682

'.
	self loadTogether: self script123 merge: false.
	Morph shortcutsHandler: KMShortcutHandler new.
	self flushCaches.
self cleanRepositories.
