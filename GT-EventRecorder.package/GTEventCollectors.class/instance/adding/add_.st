add: aGTEventCollector
	^ mutex critical: [ collectors add: aGTEventCollector ]