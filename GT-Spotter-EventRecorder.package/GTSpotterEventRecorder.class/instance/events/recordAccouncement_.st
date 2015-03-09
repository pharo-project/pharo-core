recordAccouncement: anAnnouncement

	self canSendUsageData ifFalse: [ ^ self ].

	"recorderEventClassName := self eventClassNameFor: anAnnouncement class.
	(Smalltalk hasClassNamed: recorderEventClassName) ifFalse: [ ^ false ].
	self storeEvent: (recorderEventClassName asClass fromAnnouncement: anAnnouncement)"
	
	anAnnouncement class == GTSpotterActOn ifTrue: [ ^self buildAndStoreEventFrom: anAnnouncement withType: GTSpotterRecorderActOnEvent ].
	
	anAnnouncement class == GTSpotterCategorySelected ifTrue: [ ^self buildAndStoreEventFrom: anAnnouncement withType: GTSpotterRecorderCategorySelectedEvent ].
	
	anAnnouncement class == GTSpotterContextChanged ifTrue: [ ^self buildAndStoreEventFrom: anAnnouncement withType: GTSpotterRecorderContextChangedEvent ].
	
	anAnnouncement class == GTSpotterDiveInCategory ifTrue: [ ^self buildAndStoreEventFrom: anAnnouncement withType: GTSpotterRecorderDiveInCategoryEvent ].
	
	anAnnouncement class == GTSpotterDiveInElement ifTrue: [ ^self buildAndStoreEventFrom: anAnnouncement withType: GTSpotterRecorderDiveInElementEvent ].
	
	anAnnouncement class == GTSpotterDiveOut ifTrue: [ ^self buildAndStoreEventFrom: anAnnouncement withType: GTSpotterRecorderDiveOutEvent ].
	
	anAnnouncement class == GTSpotterExitAnnouncement ifTrue: [ ^self buildAndStoreEventFrom: anAnnouncement withType: GTSpotterRecorderExitAnnouncementEvent ].
	
	anAnnouncement class == GTSpotterHidePreview ifTrue: [ ^self buildAndStoreEventFrom: anAnnouncement withType: GTSpotterRecorderHidePreviewEvent ].
	
	anAnnouncement class == GTSpotterSelectedCandidateChanged ifTrue: [ ^self buildAndStoreEventFrom: anAnnouncement withType: GTSpotterRecorderSelectedCandidateChangedEvent ].
	
	anAnnouncement class == GTSpotterShowPreview ifTrue: [ ^self buildAndStoreEventFrom: anAnnouncement withType: GTSpotterRecorderShowPreviewEvent ].
	
	anAnnouncement class == GTSpotterSearchFinished ifTrue: [ ^self buildAndStoreEventFrom: anAnnouncement withType: GTSpotterRecorderSearchFinishedEvent ].
	

	
 	
		
