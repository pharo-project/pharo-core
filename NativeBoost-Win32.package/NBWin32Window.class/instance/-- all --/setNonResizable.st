setNonResizable

	| newStyle |
	newStyle := self getWindowStyle bitClear: (WS_SIZEBOX|WS_MINIMIZE|WS_MAXIMIZE). 
	self setWindowLong: self index: GWL_STYLE newVale: newStyle. 	
 
		