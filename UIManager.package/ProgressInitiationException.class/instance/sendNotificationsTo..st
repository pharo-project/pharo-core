as yet unclassified
sendNotificationsTo: anObject

	self resume: (workBlock value: (anObject start: minVal; end: maxVal)).