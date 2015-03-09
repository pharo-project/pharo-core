stopDelivering
	^ mutex critical: [ | oldProcess |
		shouldDeliver := false.
		deliveryDelay ifNotNil: [ :aDelay | aDelay delaySemaphore signal ].
		oldProcess := process.
		process := nil.
		oldProcess ]