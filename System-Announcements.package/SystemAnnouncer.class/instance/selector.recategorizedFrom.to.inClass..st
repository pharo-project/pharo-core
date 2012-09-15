triggering
selector: selector recategorizedFrom: oldCategory to: newCategory inClass: aClass

	self announce: (MethodRecategorized 
				method: (aClass compiledMethodAt: selector ifAbsent: [nil])
				selector: selector
				class: aClass
				newProtocol: newCategory
				oldProtocol: oldCategory)