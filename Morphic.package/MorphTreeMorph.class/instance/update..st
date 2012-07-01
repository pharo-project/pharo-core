updating
update: aSymbol
	aSymbol == #selection ifTrue: [^ self listManager updateSelectionFromModel].
	((aSymbol  isKindOf: Array)	and: [aSymbol size > 1 and: [aSymbol first == #selectItems and: [aSymbol second isCollection]]])
		ifTrue: [^ self selectedItems: aSymbol second].
	aSymbol == self nodeListSelector ifTrue: [^ self updateList].
	aSymbol == #selectAll ifTrue: [^ self listManager selectAll].
	aSymbol == #deselectAll ifTrue: [^ self listManager deselectAll].
	((aSymbol isKindOf: Array) 
		and: [aSymbol size > 1 and: [aSymbol first == self nodeListSelector and: [
					aSymbol second == #openPath]]]) "allow directed path opening where multiple trees exist"
			ifTrue: 
				[^(self allNodeMorphs at: 1 ifAbsent: [^self]) 
					openPath: (aSymbol allButFirst: 2)].
	((aSymbol isKindOf: Array) 
		and: [aSymbol size > 1 and: [aSymbol first == self nodeListSelector and: [
					aSymbol second == #openItemPath]]]) "allow directed path opening where multiple trees exist"
			ifTrue: 
				[^ (self allNodeMorphs at: 1 ifAbsent: [^self]) 
					openItemPath: (aSymbol allButFirst: 2)].
	((aSymbol isKindOf: Array) 
		and: [aSymbol size > 1 and: [aSymbol first == self nodeListSelector and: [
					aSymbol second == #expandAllFromNode:]]]) 
			ifTrue: 
				[^ self expandAllFromNode: aSymbol third].
	((aSymbol isKindOf: Array) 
		and: [aSymbol size > 1 and: [aSymbol first == self nodeListSelector and: [
					aSymbol second == #closeItemPath]]]) "allow directed path closing where multiple trees exist"
			ifTrue: 
				[^ (self allNodeMorphs at: 1 ifAbsent: [^self]) 
					closeItemPath: (aSymbol allButFirst: 2)].
	((aSymbol isKindOf: Array) 
		and: [aSymbol notEmpty and: [aSymbol first == #openPath]]) 
			ifTrue: 
				[^(self allNodeMorphs at: 1 ifAbsent: [^self]) 
					openPath: aSymbol allButFirst].
	((aSymbol isKindOf: Array) 
		and: [aSymbol size  = 2 and: [aSymbol first = self nodeListSelector and: [
					aSymbol second == #expandRoots]]]) 
			ifTrue: 
				[^self expandRoots].
	((aSymbol isKindOf: Array) 
		and: [aSymbol size = 2 and: [aSymbol first = self nodeListSelector]])
		ifTrue: [aSymbol second = #expandAll ifTrue: [^ self expandAll].
			aSymbol second = #collapseAll ifTrue: [^ self collapseAll]]