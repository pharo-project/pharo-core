buildAndStoreEventFrom: anAnnouncement withType: aClass
	(aClass shouldIgnoreAnnouncement: anAnnouncement)
		ifTrue: [ ^ self ].
	self storeEvent: (aClass fromAnnouncement: anAnnouncement)

	
 	
		
