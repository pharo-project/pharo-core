updating
processUpdates
	"Process update files from a well-known update server.  This method is called at system startup time,   Only if the UpdateFromServerAtStartup class variable is true is the actual update processing undertaken automatically"
	| choice |
	(self updateFromServerAtStartup) ifTrue:
		[choice := UIManager default chooseFrom: #('Yes, Update' 'No, Not now' 'Don''t ask again')
			title: 'Shall I look for new code\updates on the server?' withCRs.
		choice = 1 ifTrue: [
			UpdateStreamer new updateFromServer].
		choice = 3 ifTrue: [
			self updateFromServerAtStartup: false.
			self inform: 'Remember to save you image to make this setting permant.']].