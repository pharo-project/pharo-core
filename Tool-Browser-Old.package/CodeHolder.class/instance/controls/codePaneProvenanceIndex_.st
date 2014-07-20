codePaneProvenanceIndex: anInteger
	"Set the code provenance to the item with the given index."
	
	self perform: ((self contentsSymbolQuints select: [:e | e ~= #-]) at: anInteger) second