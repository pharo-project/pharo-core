braceSelector: argumentSize
	^ #(braceWithNone braceWith: braceWith:with: braceWith:with:with: braceWith:with:with:with:) at: argumentSize + 1 ifAbsent: [ nil ]