convenience
on: anAnnouncementClass send: aSelector to: anObject
	"Declare that when anAnnouncementClass is raised, anObject should receive the message aSelector."

	^ self subscribe: anAnnouncementClass send: aSelector to: anObject