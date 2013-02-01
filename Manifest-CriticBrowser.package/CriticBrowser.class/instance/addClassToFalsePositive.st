menu
addClassToFalsePositive

	| manifestBuilder|
	
	criticsModel selectedItems ifNotNil: [ :criticss |
		criticss do: [ :critic |
			manifestBuilder := checker manifestBuilderOf: critic.
			critic isCompiledMethod 
				ifTrue: [ manifestBuilder addRejectClass: critic methodClass]
				ifFalse: [ manifestBuilder addRejectClass: critic]].
		self updateList
	]	