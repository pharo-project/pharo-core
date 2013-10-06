addInstVar
	| adder |
	
	adder := InstVarAdder new.
	adder 
		description: descriptionHolder contents;
		openWithSpec.
		
	adder whenDescriptionChanged: [ self description: adder description ]