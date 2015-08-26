checkClass: aClass 
	aClass isUsed ifFalse: [
		result
			addClass: aClass;
			addClass: aClass theMetaClass ]