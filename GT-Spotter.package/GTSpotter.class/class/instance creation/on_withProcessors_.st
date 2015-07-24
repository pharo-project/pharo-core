on: anObject withProcessors: aMethodsList
	"Create a new Spotter model on the given object and only enable those
	processors created by methods in the given list."
	
	^ (self on: anObject)
		processorsFilter: (GTSpotterMethodListProcessorFilter new
			addSignaturesFor: aMethodsList)