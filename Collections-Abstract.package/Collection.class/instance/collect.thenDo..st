enumerating
collect: collectBlock thenDo: doBlock 
	"Utility method to improve readability."
	^ (self collect: collectBlock) do: doBlock