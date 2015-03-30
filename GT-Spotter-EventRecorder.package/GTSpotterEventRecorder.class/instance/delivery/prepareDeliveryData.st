prepareDeliveryData
	self canSendUsageData ifFalse: [ 
		recordedData removeAll.
		deliveryQueue removeAll.
		postponedData := nil.
		^ self ].
	recordedData isEmpty ifTrue: [ ^ self ].
	GTSpotterEventRecorderSettings ensureComputerID.
	self primitivePrepareDeliveryData