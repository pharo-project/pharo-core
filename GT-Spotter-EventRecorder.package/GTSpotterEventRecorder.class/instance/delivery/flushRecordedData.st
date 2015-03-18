flushRecordedData
	"For debugging purpose only. Remember that those data will not be published."
	| collection |
	collection := OrderedCollection new.
	recordedData flush: [ :eachItem | collection add: eachItem ].
	^ collection