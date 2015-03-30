primitivePrepareDeliveryData
	| likelyDeliveredData toBeDeliveredData toBeDeliveredAnnouncement |
	likelyDeliveredData := self newCollectionWithPostponedData.
	recordedData flush: [ :eachRecord | likelyDeliveredData addLast: eachRecord ].
	toBeDeliveredData := self postponeSomeData: likelyDeliveredData.
	toBeDeliveredAnnouncement := self serializedAnnouncementFrom: toBeDeliveredData.
	deliveryQueue nextPut: toBeDeliveredAnnouncement.