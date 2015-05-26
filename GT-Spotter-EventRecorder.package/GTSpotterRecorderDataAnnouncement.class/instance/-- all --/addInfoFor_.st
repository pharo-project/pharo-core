addInfoFor: aGTSpotterRecorderEvent 
	dictionary keysAndValuesDo: [ :key :value |
		key = #data ifFalse: [ 
			aGTSpotterRecorderEvent infoAt: key put: value ] ]