onMethod: aCompiledMethod
	^ self new 
		title: (String streamContents: [ :stream | aCompiledMethod printOn: stream ]);
		environment: (self cache method: aCompiledMethod);
		yourself