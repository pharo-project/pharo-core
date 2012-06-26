converting
adaptToNumber: rcvr andSend: selector
	"If I am involved in arithmetic with a number, convert me to a number."

	^ rcvr perform: selector with: self asNumber