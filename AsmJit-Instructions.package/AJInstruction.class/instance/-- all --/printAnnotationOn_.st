printAnnotationOn: aStream 
	annotation
		ifNil: [^ self].
	aStream nextPut: $";
		 nextPutAll: annotation asString;
		 nextPut: $";
		 cr.
	self printIndentOn: aStream