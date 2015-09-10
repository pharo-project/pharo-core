generateHTML: htmlStream andData: dataFileReference fromReport: aDependencyReport
	dataFileReference writeStreamDo: [ :dataStream | 
		self csv: dataStream from: aDependencyReport ].
	self generateHTML: htmlStream inputDataURL: dataFileReference basename