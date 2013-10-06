replaceAll: oldMethod by: newMethod

	critics values do: [:each |  
		(each includes: oldMethod)
			ifTrue: [
				each remove: oldMethod.
				each add: newMethod ]].
		
	falsePositives values do: [:each |  
		(each includes: oldMethod)
			ifTrue: [
				each remove: oldMethod.
				each add: newMethod ]].

	toDos values do: [:each |  
		(each includes: oldMethod)
			ifTrue: [
				each remove: oldMethod.
				each add: newMethod ]].
	
	browser updateTree 	

	