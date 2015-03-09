initializeDeliveryProcess
	process := [ [ self shouldDeliver ] whileTrue: [ 
						self deliverAndSignalProgress: false.
						deliveryDelay := self standardDuration asDelay.
						deliveryDelay wait.
						deliveryDelay := nil. ] ] 
		forkAt: Processor userBackgroundPriority 
		named: self className, ' regular delivery process'