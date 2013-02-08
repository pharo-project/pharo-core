private
logToDosInManifest
	|rId rV removeFp addFp|
	
	toDos keysAndValuesDo: [:rule :criticss | 
		rId := rule class uniqueIdentifierName.
		rV := rule class identifierMinorVersionNumber.
			
		removeFp :=  (checker toDoOf:  rule)  \ criticss.
		addFp :=  criticss \ (checker toDoOf: rule).
		(removeFp groupedBy: [:each | BuilderManifest of: each]) 
			keysAndValuesDo: [:manifestBuilder :value | 
						self removeAllCriticToToDo: value 
							forRule: rule 
							on: manifestBuilder].
					
		(addFp groupedBy: [:each | BuilderManifest of: each]) 
			keysAndValuesDo: [:manifestBuilder :value | 
				(manifestBuilder rejectRules includes: (rule class uniqueIdentifierName))
					ifFalse: [
						self addAllCriticToToDo: value  
							forRule: rule 
							on: manifestBuilder]]
		].
