whenDesactivatedDo: aBlock 
	self 
		deprecated: 'Use whenDeactivatedDo: instead'
		on: 	'1 March 2016' 
		in: 'Pharo-5.0-50622-'.
	^ self whenDeactivatedDo: aBlock 