import
importFrom: aClassOrganizer
	
	aClassOrganizer class = self
		ifTrue: [ ^ aClassOrganizer ].
		
	^ self new
		importFrom: aClassOrganizer;
		yourself