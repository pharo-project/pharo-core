asMethodSelectorAndArguments

	^ String streamContents: [:str | 

		str 
			nextPutAll: functionName.
			
		arguments isEmpty ifFalse: [
			arguments size = 1 ifFalse: [
				str
					nextPut: $_;
					nextPutAll: arguments first first.
				].
			str
				nextPut: $: ; space;
				nextPutAll: arguments first first.
				
			arguments allButFirst do: [:arg | 
				str 
					space;
					nextPutAll: arg first; 
					nextPut: $: ;
					space;
					nextPutAll: arg first				
				]
			]
	]