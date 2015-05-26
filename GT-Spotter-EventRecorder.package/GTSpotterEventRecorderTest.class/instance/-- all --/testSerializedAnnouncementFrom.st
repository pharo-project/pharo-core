testSerializedAnnouncementFrom
	| byteArray announcement |
	byteArray := recorder serializedAnnouncementFrom: self recordedData.
	announcement := recorder materializedAnnouncementFrom: byteArray.
	self assert: announcement class equals: GTSpotterRecorderDataAnnouncement.
	self assert: announcement materializedData isCollection.
	self assert: announcement materializedData size equals: self recordedData size.