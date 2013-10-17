pushInstVar: index

	^ IRInstVarAccess new 
			index:  index; 
			store: false;
			yourself