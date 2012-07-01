controls
codePaneProvenanceIndex
	"Answer the selected code provenance index."
	
	^((self contentsSymbolQuints select: [:e | e ~= #-]) collect: [:e |
		e first]) indexOf: self contentsSymbol ifAbsent: [0]