as yet unclassified
getList
	^Array with: (StrongPointerExplorerWrapper with: rootObject name: rootObject identityHash asString model: self)
