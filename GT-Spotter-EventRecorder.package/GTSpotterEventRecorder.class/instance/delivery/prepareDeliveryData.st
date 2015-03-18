prepareDeliveryData
	| toBeDeliveredData toBeDeliveredAnnouncement |
	self canSendUsageData ifFalse: [ 
		recordedData removeAll.
		deliveryQueue removeAll.
		^ self ].
	recordedData isEmpty ifTrue: [ ^ self ].
	GTSpotterEventRecorderSettings ensureComputerID.
	toBeDeliveredData := OrderedCollection new.
	recordedData flush: [ :eachRecord | toBeDeliveredData addLast: eachRecord ].
	toBeDeliveredAnnouncement := self serializedAnnouncementFrom: toBeDeliveredData.
	deliveryQueue nextPut: toBeDeliveredAnnouncement.