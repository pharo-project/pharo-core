testInstanceMatch01

	self assert: 
		((MetacelloGoferPackage name: 'Faux-Smalltalk' packageFilename: 'Faux-Smalltalk-')
			matches: (GoferVersionReference name: 'Faux-Smalltalk-tg.34')).
	self deny: 
		((MetacelloGoferPackage name: 'Faux-Smalltalk' packageFilename: 'Faux-Smalltalk-')
			matches: (GoferVersionReference name: 'Faux-SmalltalkTesting-tg.34')).
