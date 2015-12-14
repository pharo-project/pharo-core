setNonResizable
	"
	self setNonResizable
	"
	| newStyle |
	newStyle := self getWindowStyle bitClear: ((WS_SIZEBOX bitOr: WS_MINIMIZE) bitOr: WS_MAXIMIZE). 
	self setWindowLong: self getFocus index: GWL_STYLE value: newStyle. 	
		