printOn: aStream	
	aStream nextPutAll: 'ASTBlockClosure: '.
	aStream nextPutAll: self code formattedCode