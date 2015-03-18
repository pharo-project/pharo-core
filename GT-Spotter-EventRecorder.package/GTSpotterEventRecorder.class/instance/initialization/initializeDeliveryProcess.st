initializeDeliveryProcess
	process := [ [ self shouldDeliver ] whileTrue: [ 
						deliveryDelay := self standardDuration asDelay.
						deliveryDelay wait.
						deliveryDelay := nil.
						self shouldDeliver ifTrue: [ self deliverAndSignalProgress: false ] ] ] 
		forkAt: Processor userBackgroundPriority 
		named: self className, ' regular delivery process'