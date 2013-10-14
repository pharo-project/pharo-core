testInstanceMatch03

	self assert: 
		((MetacelloGoferPackage name: 'Faux-Smalltalk' packageFilename: 'Faux-Smalltalk-')
			matches: (GoferVersionReference name: 'Faux-Smalltalk-Testing-tg.34')).
