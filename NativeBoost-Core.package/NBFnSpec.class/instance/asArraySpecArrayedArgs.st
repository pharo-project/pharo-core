converting
asArraySpecArrayedArgs

	^ String streamContents: [:str | |idx|

		str 
			nextPutAll: '#( '.
		
		self printType: returnType on: str.
		str space.
		
		functionName ifNotNil: [
			str nextPutAll: functionName; space ].
		
		str nextPutAll: '( '.
		idx := 1.
		arguments do: [:arg | 
			
			str nextPutAll: arg second. "type name"
			arg third timesRepeat: [
				str nextPut: $* ].
			str space;
				nextPutAll: 'argsArray@', idx printString;
				space.
			idx := idx + 1.
		] separatedBy: [ str nextPutAll: ', ' ].
	
		str nextPutAll: '))'.
		
	]