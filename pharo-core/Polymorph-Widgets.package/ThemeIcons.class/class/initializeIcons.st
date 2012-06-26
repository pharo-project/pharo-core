class initialization
initializeIcons
	"self initializeIcons"
	
	| methods |
	icons := IdentityDictionary new.
	self iconSelectors 
		do: [:each | icons
				at: each
				put: (self perform: each)]