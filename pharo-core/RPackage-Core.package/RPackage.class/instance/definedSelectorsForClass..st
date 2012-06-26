accessing
definedSelectorsForClass: aClass

	^ aClass isMeta
		ifTrue: [ metaclassDefinedSelectors at: aClass theNonMetaClass name ifAbsent: [ #() ] ]
		ifFalse: [ classDefinedSelectors at: aClass name ifAbsent: [ #() ] ]