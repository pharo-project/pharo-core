evaluating
loadDefinitions
	| filePackage |
	filePackage :=
		FilePackage new
			fullName: 'ReadStream';
			fileInFrom: self readStream.
	definitions := OrderedCollection new.
	filePackage classes do:
		[:pseudoClass |
		pseudoClass hasDefinition
			ifTrue: [definitions add:
					(self classDefinitionFrom: pseudoClass)].
		definitions addAll: (self methodDefinitionsFor: pseudoClass).
		definitions addAll: (self methodDefinitionsFor: pseudoClass metaClass)].
	filePackage doIts do:
		[:ea |
		self addDefinitionsFromDoit: ea string].
	