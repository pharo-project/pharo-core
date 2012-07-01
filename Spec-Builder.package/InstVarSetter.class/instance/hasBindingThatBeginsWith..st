private
hasBindingThatBeginsWith: aString
	
	^ self description
		ifNil: [ false ]
		ifNotNil: [:desc | (desc addInstVarDescriptions collect: #name) anySatisfy: [:name | name beginsWith: aString ]]