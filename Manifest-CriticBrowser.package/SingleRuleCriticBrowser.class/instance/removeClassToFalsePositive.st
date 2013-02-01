menu
removeClassToFalsePositive

	| manifestBuilder |
	criticsModel selectedItems
		ifNotNil: [:criticss | criticss do: [:critic |
			manifestBuilder := checker manifestBuilderOf: critic. 
	
			critic isCompiledMethod 
				ifTrue: [ manifestBuilder removeRejectClass: critic methodClass]
				ifFalse: [ manifestBuilder removeRejectClass: critic theNonMetaClass ]]].
	self  updateList
	