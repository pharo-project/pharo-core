materializeReferencesOf: aRectangle with: aDecoder
		
		aRectangle 
			setOrigin: aDecoder nextEncodedReference @ aDecoder nextEncodedReference	
		 	corner: aDecoder nextEncodedReference @ aDecoder nextEncodedReference.	
	 