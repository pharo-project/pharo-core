notifyAboutSessionChange: anObject
	"register an object to be notified about session change"
	self announcer weak when: NBSessionChangeAnnouncement send: #nbSessionChanged  to: anObject
