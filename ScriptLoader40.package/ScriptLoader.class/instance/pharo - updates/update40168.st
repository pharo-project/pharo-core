update40168
	"self new update40168"
	RecentMessageList stopNotifications.
Smalltalk tools remove: #recentMessageList.
	self withUpdateLog: '13825 MNU: receiver of protocolsFor: is nil
	https://pharo.fogbugz.com/f/cases/13825

13835 Small cleanup in System-Changes
	https://pharo.fogbugz.com/f/cases/13835

13836 Clean up RecentSubmissions more
	https://pharo.fogbugz.com/f/cases/13836

13834 Small Completion Cleanup
	https://pharo.fogbugz.com/f/cases/13834

'.
	self loadTogether: self script168 merge: false.
	RecentMessageList registerToolsOn: Smalltalk tools.
.
	self flushCaches.
self cleanRepositories.
