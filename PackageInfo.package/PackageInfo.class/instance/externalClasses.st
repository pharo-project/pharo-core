dependencies
externalClasses
	| myClasses |
	myClasses := self classesAndMetaClasses.
	^ Array streamContents:
		[:s |
		ProtoObject withAllSubclassesDo:
			[:class |
			(myClasses includes: class) ifFalse: [s nextPut: class]]]