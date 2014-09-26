materializeReferencesOf: aRectangle with: aDecoder
		
		aRectangle 
			setPoint: aDecoder nextEncodedReference @ aDecoder nextEncodedReference	
		 	point: aDecoder nextEncodedReference @ aDecoder nextEncodedReference.	
	 