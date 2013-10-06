testInlineMethodForSuperSendThatAlsoSendsSuper
	| refactoring |
	model := Smalltalk evaluate: self inlineMethodTestData.
	refactoring := RBInlineMethodRefactoring 
				inline: (102 to: 131)
				inMethod: #executeNotifying:
				forClass: (model classNamed: #RBRenameInstanceVariableChange).
	self shouldFail: refactoring