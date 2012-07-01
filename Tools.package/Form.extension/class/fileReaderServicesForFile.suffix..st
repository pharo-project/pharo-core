*Tools-FileList
fileReaderServicesForFile: fullName suffix: suffix

	^((ImageReadWriter allTypicalFileExtensions add: '*'; add: 'form'; yourself)
		includes: suffix)
		ifTrue: [ self services ]
		ifFalse: [#()]
