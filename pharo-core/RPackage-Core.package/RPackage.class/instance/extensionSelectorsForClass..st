accessing
extensionSelectorsForClass: aClass

	^ aClass isMeta
		ifTrue: [ metaclassExtensionSelectors at: aClass theNonMetaClass name ifAbsent: [ #() ] ]
		ifFalse: [ classExtensionSelectors at: aClass name ifAbsent: [ #() ] ]