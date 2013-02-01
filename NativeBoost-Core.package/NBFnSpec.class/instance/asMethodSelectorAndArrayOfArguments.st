converting
asMethodSelectorAndArrayOfArguments
	^ String
		streamContents: [ :str | 
			str
				nextPutAll: functionName;
				nextPutAll: ': argsArray';
				cr;
				nextPut: $".
			arguments do: [ :arg | str nextPutAll: arg first ] separatedBy: [ str nextPutAll: ', ' ].
			str nextPut: $" ]