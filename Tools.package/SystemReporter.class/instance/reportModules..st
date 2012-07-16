reporting
reportModules: aStream
	self header: 'Loaded VM Modules' on: aStream.
	Smalltalk image listLoadedModules asSortedCollection do: [:each | aStream nextPutAll: each; cr].
	aStream cr.
	self header: 'VM Built-in Modules' on: aStream.
	Smalltalk image listBuiltinModules asSortedCollection do: [:each | aStream nextPutAll: each; cr].

