rowMorphForColumn: aGlamourColumn
	| rowElements contentMorph tagMorphs |
	
	contentMorph := (self containerTree glamourPresentation 
		column: aGlamourColumn 
		valueFor: self item) asMorph asReadOnlyMorph.
	tagMorphs := self tagMorphsFrom: aGlamourColumn.
	tagMorphs ifEmpty: [ ^ contentMorph ].
	
	rowElements := OrderedCollection new
		add: contentMorph;
		addAll: tagMorphs;
		yourself.			
	^ (UITheme current newRowIn: World for: rowElements)