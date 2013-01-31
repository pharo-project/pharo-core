running
tearDown
	suite resources 
		do: [ :each | each reset ].
		
	stream tab; nextPutAll: '<system-out><![CDATA[]]></system-out>'; nextPut: Character lf.
	stream tab; nextPutAll: '<system-err><![CDATA[]]></system-err>'; nextPut: Character lf.
	stream nextPutAll: '</testsuite>'.
	
	stream position: suitePosition.
	stream 
		nextPutAll: ' failures="'; print: suiteFailures; 
		nextPutAll: '" errors="'; print: suiteErrors; 
		nextPutAll: '" time="'; print: suiteTime / 1000.0; 
		nextPutAll: '">'.
	stream close