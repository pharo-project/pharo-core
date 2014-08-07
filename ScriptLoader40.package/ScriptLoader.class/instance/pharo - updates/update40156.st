update40156
	"self new update40156"
	RecentMessageList stopNotifications.
.
	self withUpdateLog: '13793 Enable new Pointer Explorer
	https://pharo.fogbugz.com/f/cases/13793

13764 Simplify RecentSubmissions
	https://pharo.fogbugz.com/f/cases/13764

'.
	self loadTogether: self script156 merge: false.
	Smalltalk tools remove: #strongPointerExplorer.
EyePointerExplorer registerToolsOn: Smalltalk tools.
RecentMessageList resetUniqueInstance.
	self flushCaches.
self cleanRepositories.
