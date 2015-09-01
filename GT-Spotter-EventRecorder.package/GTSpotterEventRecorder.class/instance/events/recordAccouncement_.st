recordAccouncement: anAnnouncement

	self canSendUsageData ifFalse: [ ^ self ].

	"recorderEventClassName := self eventClassNameFor: anAnnouncement class.
	(Smalltalk hasClassNamed: recorderEventClassName) ifFalse: [ ^ false ].
	self storeEvent: (recorderEventClassName asClass fromAnnouncement: anAnnouncement)"
	
	(anAnnouncement canUnderstand: #asRecorderEvent) ifTrue: [	
		self storeEvent: anAnnouncement asRecorderEvent ]
	

	
 	
		
