plannedSelectorRenames
	^{
		#ifNotEmptyDo: -> #ifNotEmpty:.
		#ifNotEmptyDo:ifEmpty: -> #ifNotEmpty:ifEmpty:.
		#ifEmpty:ifNotEmptyDo: -> #ifEmpty:ifNotEmpty:.
		#ifNotNilDo: -> #ifNotNil: .
		#ifNotNilDo:ifNil: -> #ifNotNil:ifNil:.
		#ifNil:ifNotNilDo: -> #ifNil:ifNotNil: 
	}
