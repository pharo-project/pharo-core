adaptToNumber: receiver andSend: selector
	"If I am involved in arithmetic with a number, convert me to a number."

	^ receiver perform: selector with: self asNumber