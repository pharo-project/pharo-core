classOrMetaClass: aClass
	aClass
		ifNil: [ self widget beForPlainText ]
		ifNotNil: [ 
			self widget
				beForSmalltalkCode;
				classOrMetaClass: aClass ]