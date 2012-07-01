class tags
addClassDefinitionName: aClassName toClassTag: aSymbol
	"Tags the class aClass with the tag aSymbol"
	
	| res |
	res := classTags at: aSymbol ifAbsent: [nil].
	res isNil
		ifTrue: [classTags at: aSymbol put: (Set new add: aClassName; yourself)]
		ifFalse: [res add: aClassName].
	