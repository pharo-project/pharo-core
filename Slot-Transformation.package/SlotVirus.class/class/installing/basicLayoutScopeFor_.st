basicLayoutScopeFor: aClass
	^ aClass superclass layout slotScope extend: (aClass instVarNames ifNil: [ #() ])