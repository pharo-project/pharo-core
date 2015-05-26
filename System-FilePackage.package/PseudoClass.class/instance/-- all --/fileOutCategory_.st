fileOutCategory: categoryName

	| internalStream |
	internalStream := (String new: 1000) writeStream.
	self fileOutMethods: (self organization listAtCategoryNamed: categoryName)
			on: internalStream.
	FileStream writeSourceCodeFrom: internalStream baseName: (self name, '-', categoryName) isSt: true