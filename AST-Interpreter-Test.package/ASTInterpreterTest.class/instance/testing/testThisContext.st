testThisContext

	self assert: ((self interpret: 'thisContext') isKindOf: AIRootContext).
	"The home context of a AIRootContext is nil"
	self assert: (self interpret: 'thisContext home') equals: nil.
	self assert: (self interpret: 'thisContext homeContext') equals: nil.
	
	self assert: ((self interpret: 'ASTInterpreterTest new thisContextMethod') isKindOf: AIContext).
	self assert: ((self interpret: 'ASTInterpreterTest new thisContextCopyMethod') isKindOf: AIContext).
