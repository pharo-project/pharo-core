menu
removeClassToFalsePositive
		| class |
	
	criticsModel selectedItems ifNotNil: [ :items |
		items do: [ :critic |
			class := critic isCompiledMethod 
				ifTrue: [  critic methodClass]
				ifFalse: [critic].
			cache removeFalsePositiveClass: class.
			]]
	
	