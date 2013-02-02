This smell arises when a class has too many instance variables (10 or more). Such classes could be redesigned to have fewer fields, possibly through some nested object grouping. 
	Sometimes instance variables are used instead of methods arguments or temporaries. You can check if an instance variables values is always valid during the complete lifetime of an object. In addition, looking at methods used together by a group of methods may be an indication that a new object should be created. Large classes often exhibit a large number of instance variables. Some people also confuse classes and namespaces. 
	
	
	The defined number of instance variables can be edited in RBExcessiveVariablesRule>>variablesCount.