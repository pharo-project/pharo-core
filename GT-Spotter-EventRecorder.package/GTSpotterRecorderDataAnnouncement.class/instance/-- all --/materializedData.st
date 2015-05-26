materializedData
	^ self data ifNotNil: [ :aData | GTSpotterEventRecorder materialize: aData ]