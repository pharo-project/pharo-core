runForLog
	"To run the benchmark you may have to reset the organizer
	self resetOrganizerToBenchmark"	
	" self runForLog  "
	
	
	"17 July 2010
		class package access: 10
		extending package access: 13
		selector for class: 39
		extending package access +: 19
		method package access: 1173
	"
	

	
	| classes |
	RPackage 
		withOrganizer: self organizerToBenchmark
		do: [ :anOrganizer | 
			classes := Object withAllSubclasses.
			classes remove: UndefinedObject.
			classes remove: ClassTrait.
			classes remove: ClassTrait class.
			classes := classes reject: [:each | #('BogusInfo*' 'GRPackage*' 'MC*') 
												anySatisfy: [:pat | pat match: each name]].
			classes := classes reject: [:each | each package isNil].
			
			^ String streamContents: [:st |
					
					st nextPutAll: 'class package access: ',	(Time millisecondsToRun: [classes do: [:each | each package]]) printString ;cr.
					st nextPutAll: 'extending package access: ',	(Time millisecondsToRun: [classes do: [:each | each extendingPackages]]) printString ;cr.
		     			st nextPutAll: 'selector for class: ',	(Time millisecondsToRun: [classes do: [:each | each package selectorsForClass: each]]) printString ;cr.
					st nextPutAll: 'extending package access +: ',	(Time millisecondsToRun: 
																	[classes do: [:each | each extendingPackages 
																							do: [ :package | 
																								package selectorsForClass: each]]]) printString ;cr.
					st nextPutAll: 'method package access: ',	(Time millisecondsToRun: 
																	[classes do: [:each | each methods do: [:method | 
																				method packageFromOrganizer: anOrganizer ]]]) printString ;cr.
			
			
			
			]].
					
	
	