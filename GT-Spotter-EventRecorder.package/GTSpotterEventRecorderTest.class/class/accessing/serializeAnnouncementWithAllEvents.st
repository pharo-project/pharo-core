serializeAnnouncementWithAllEvents
	"self serializeAnnouncementWithAllEvents"
	| recorder |
	recorder := GTSpotterEventRecorder new.
	recorder stopDelivering. 
	^ recorder serializedAnnouncementFrom: self instancesForAllEvents.
	