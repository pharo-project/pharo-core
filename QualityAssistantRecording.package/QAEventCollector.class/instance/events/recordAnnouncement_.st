recordAnnouncement: anAnnouncement
	Privacy sendDiagnosticsAndUsageData ifFalse: [ ^ self ].	
	(anAnnouncement respondsTo: #asQAREvent) ifTrue: [
		[ self add: anAnnouncement asQAREvent ]
			on: Error
			do: [ :error |
				QARecordingSettings showErrors ifTrue: [ error pass ] ] ]