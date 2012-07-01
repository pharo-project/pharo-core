converting
adaptToCollection: rcvr andSend: selector
	"If I am involved in arithmetic with a collection, convert me to a number."

	^ rcvr perform: selector with: self asNumber