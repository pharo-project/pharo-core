deliverDataAndSignalProgress: aBoolean
	deliveryQueue flush: [ :eachByteArray |
		self deliverData: eachByteArray signalProgress: aBoolean ]