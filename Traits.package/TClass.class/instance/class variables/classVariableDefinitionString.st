classVariableDefinitionString
	"Answer a string that evaluates to the definition of the class Variables"
	
	^String streamContents: [ :str | | special | special := false.
		str nextPutAll: '{ '.
		self classVariables do: [:global |
				(global isKindOf: GlobalVariable) not  "isSpecial"
					ifFalse: [ 
						"special ifTrue: [ str cr. special := false ]."
						str nextPutAll: global name storeString; nextPutAll: ' '. ]
					ifTrue: [
						special := true. 
						str 
							nextPutAll: '#';
							nextPutAll: global name;
							nextPutAll: ' => ';
							nextPutAll: global class name]]
			separatedBy: [ 
				str nextPutAll: '.  '.  
				special ifTrue: [ str cr ]  ]   .
		str nextPutAll: '}'. ]