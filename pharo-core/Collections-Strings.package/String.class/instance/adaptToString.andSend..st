converting
adaptToString: rcvr andSend: selector
	"If I am involved in arithmetic with a string, convert us both to
	numbers, and return the printString of the result."

	^ (rcvr asNumber perform: selector with: self asNumber) printString