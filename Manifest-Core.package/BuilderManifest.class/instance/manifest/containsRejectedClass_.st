containsRejectedClass: aClass
	
	^ self rejectClasses anySatisfy: [ :cl | cl = aClass ]