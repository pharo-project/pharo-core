transforming
renameReferences
	| replacer |
	replacer := (RBParseTreeRewriter replaceLiteral: className with: newName)
				replace: className with: newName;
				replaceArgument: newName
					withValueFrom: 
						[:aNode | 
						self 
							refactoringError: newName , ' already exists within the reference scope'];
				yourself.
	self model allReferencesToClass: class
		do: 
			[:method | 
			(method modelClass hierarchyDefinesVariable: newName) 
				ifTrue: 
					[self refactoringError: newName , ' is already defined in hierarchy of ' 
								, method modelClass printString].
			self 
				convertMethod: method selector
				for: method modelClass
				using: replacer]