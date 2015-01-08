gtInspectorVariableValuePairs
	"We override the variables with context specific ones"
	| tempIndex |
	tempIndex := 0.
	^ super gtInspectorVariableValuePairs
		addAll:
				(self tempNames
						collect: [ :tempName ||value|
							tempIndex := tempIndex + 1.
							value := [self debuggerMap namedTempAt: tempIndex in: self] 
								on: Error 
								do: [value := (Text string: 'error obtaining field value' attribute: TextColor red) asString ].
							('[' , tempName , ']') -> value ]);
		yourself