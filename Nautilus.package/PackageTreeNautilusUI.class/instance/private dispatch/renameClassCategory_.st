renameClassCategory: packageTag
	| newName oldName |

	oldName := packageTag nameWthoutPackagePrefix.
	newName := UIManager default 
		request: ('New name of category {1}' format: { packageTag name }) 
		initialAnswer: oldName
		title: 'Rename a category'.
	newName = oldName ifTrue: [ ^ self ].
	
	(self isValidPackageName: newName)
		ifTrue: [ packageTag renameWithPackagePrefixTo: newName ]
		ifFalse: [ self alertInvalidPackageName:newName ].		
