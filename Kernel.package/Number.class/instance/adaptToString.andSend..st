converting
adaptToString: rcvr andSend: selector
	"If I am involved in arithmetic with a String, convert it to a Number."
	^ rcvr asNumber perform: selector with: self