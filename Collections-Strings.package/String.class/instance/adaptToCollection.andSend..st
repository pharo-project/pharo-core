converting
adaptToCollection: receiver andSend: selector
	"If I am involved in arithmetic with a collection, convert me to a number."

	^ receiver perform: selector with: self asNumber