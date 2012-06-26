converting
adaptToPoint: rcvr andSend: selector
	"If I am involved in arithmetic with a point, convert me to a number."

	^ rcvr perform: selector with: self asNumber