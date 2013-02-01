menu
addClassToFalsePositive

	| manifestBuilder|
	criticsModel selectedItems ifNotNil: [ :items |
		items do: [ :critic |
			manifestBuilder := checker manifestBuilderOf: critic.
			critic isCompiledMethod 
				ifTrue: [ manifestBuilder addRejectClass: critic methodClass]
				ifFalse: [ manifestBuilder addRejectClass: critic]].
		self updateList ]	