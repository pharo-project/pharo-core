copying
copyReplaceAll: oldSubstring with: newSubstring 
	"Default is not to do token matching.
	See also String copyReplaceTokens:with:"
	^ self copyReplaceAll: oldSubstring with: newSubstring asTokens: false
	"'How now brown cow?' copyReplaceAll: 'ow' with: 'ello'"
	"'File asFile Files File''s File' copyReplaceTokens: 'File' with: 'Pile'"