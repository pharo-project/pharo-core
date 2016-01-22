change
	
	^ RBAddMethodChange 
		compile: (self methodHeader), String cr, String tab, source
		in: class