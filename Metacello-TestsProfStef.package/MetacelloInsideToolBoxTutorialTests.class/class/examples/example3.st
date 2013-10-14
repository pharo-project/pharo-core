example3
	"update package specs and description in version 1.0"

	"self example3"

	| message |
	message := '- fixed a bug'.
	(MetacelloToolBox configurationNamed: 'Example')
		updateVersionMethodForVersion: '1.0'
			versionSpecsDo: [ :attribute :versionSpec | 
					attribute == #common
						ifTrue: [ 
							"update the author, blessing and timeStamp"
							versionSpec
								author: MetacelloPlatform current authorName;
								timestamp: MetacelloPlatform current timestamp.
							versionSpec description value isEmpty
								ifTrue: [ versionSpec description: message ]
								ifFalse: [ 
									| strm |
									strm := WriteStream on: String new.
									strm
										nextPutAll: versionSpec description value;
										cr;
										nextPutAll: message.
									versionSpec description: strm contents ] ].
					true ];
		commitMethod