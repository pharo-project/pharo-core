instance-creation
openOn: anAnnouncer
	"Schedule a new window and open a new AnnouncementSpy on the announcer passed as argument"
	(self on: anAnnouncer) build openInWorld
	