prepareDeliveryData
	| toBeDeliveredData toBeDeliveredAnnouncement |
	GTSpotterEventRecorderSettings uniqueInstance sendUsageData ifFalse: [ 
		recordedData removeAll.
		deliveryQueue removeAll.
		^ self ].
	recordedData isEmpty ifTrue: [ ^ self ].
	toBeDeliveredData := OrderedCollection new.
	recordedData flush: [ :eachRecord | toBeDeliveredData addLast: eachRecord ].
	toBeDeliveredAnnouncement := self serializedAnnouncementFrom: toBeDeliveredData.
	deliveryQueue nextPut: toBeDeliveredAnnouncement.