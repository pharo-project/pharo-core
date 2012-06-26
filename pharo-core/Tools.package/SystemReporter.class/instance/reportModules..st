reporting
reportModules: aStream
	self header: 'Loaded VM Modules' on: aStream.
	SmalltalkImage current listLoadedModules asSortedCollection do: [:each | aStream nextPutAll: each; cr].
	aStream cr.
	self header: 'VM Built-in Modules' on: aStream.
	SmalltalkImage current listBuiltinModules asSortedCollection do: [:each | aStream nextPutAll: each; cr].

