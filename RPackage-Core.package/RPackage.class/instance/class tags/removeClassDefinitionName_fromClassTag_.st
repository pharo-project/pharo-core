removeClassDefinitionName: aClassName fromClassTag: aSymbol
	"Detags the class aClass with the tag aSymbol"
	
	| res |
	res :=  classTags at: aSymbol ifAbsent: [^ self].
	res remove: aClassName ifAbsent: [ ^ self ].
	res ifEmpty: [ self removeClassTag: aSymbol ]