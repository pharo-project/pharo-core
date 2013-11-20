renameTagsPrefixedWith: oldName to: newName
	| prefix |
	
	oldName ifNil: [ ^ self ].
	
	prefix := oldName, '-'.
	(self classTags 
		select: [ :each | each name beginsWith: prefix ])
		do: [ :each | each renameTo: (newName, (each name allButFirst: oldName size)) asSymbol ]