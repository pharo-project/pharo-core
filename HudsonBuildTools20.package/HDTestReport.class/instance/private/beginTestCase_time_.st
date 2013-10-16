beginTestCase: aTestCase time: time
	stream tab; 
		nextPutAll: '<testcase classname="'; 
		nextPutAll: (self encode: (aTestCase class category copyReplaceAll: '-' with: '.')); 
		nextPut: $.; nextPutAll: (self encode: aTestCase class name); 
		nextPutAll: '" name="'; nextPutAll: (self encode: aTestCase selector); 
		nextPutAll: '" time="'; print: time; nextPutAll: '">'; nextPut: Character lf.
	
	progressFile nextPutAll: 'starting testcase: ' ; nextPutAll: aTestCase class name; nextPutAll:'>>';
	nextPutAll: aTestCase selector; nextPutAll: ' ... '; flush.
	
