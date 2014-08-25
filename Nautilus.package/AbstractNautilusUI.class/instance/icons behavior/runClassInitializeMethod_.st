runClassInitializeMethod: aMethod
	"Perform the method as an example method"
 	|selectedClass|
	
	(UIManager confirm: 'Would you like to (re)initialize the class') 
		ifFalse: [ ^self ].
	selectedClass := aMethod methodClass baseClass.	
	selectedClass perform: aMethod selector.
	UIManager default inform: selectedClass name asString, ' initialized'.
	 