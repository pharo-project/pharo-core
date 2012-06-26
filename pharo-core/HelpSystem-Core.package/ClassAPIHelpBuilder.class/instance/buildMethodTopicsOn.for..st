private building
buildMethodTopicsOn: topic for: aClass
	|stream comments methodComment|
	stream := String new writeStream.
	aClass selectors asSortedCollection do:
			[:selector | 		
			  stream 
				 nextPutAll: aClass name;
			    nextPutAll: '>>';
			  	 nextPutAll: selector asString;
				 cr.		

			 (methodComment := (aClass>>selector) comment) ifNil: 
											[methodComment :=  'Method has no comment.' ].
									
			  stream nextPutAll: methodComment;cr;cr.
	].
	topic contents: stream contents.
	
	