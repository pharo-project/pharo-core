selector: selector recategorizedFrom: oldCategory to: newCategory inClass: aClass

	self methodRecategorized: (aClass compiledMethodAt: selector ifAbsent: [nil]) oldProtocol: oldCategory