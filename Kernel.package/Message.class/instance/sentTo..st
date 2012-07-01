sending
sentTo: receiver
	"answer the result of sending this message to receiver"

	lookupClass == nil
		ifTrue: [^ receiver perform: selector withArguments: args]
		ifFalse: [^ receiver perform: selector withArguments: args inSuperclass: lookupClass]