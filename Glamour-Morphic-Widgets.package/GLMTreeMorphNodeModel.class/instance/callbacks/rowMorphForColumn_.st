rowMorphForColumn: aGlamourColumn
	| rowElements contentMorph tagMorphs |
		
	aGlamourColumn modifiedBlock
		ifNil: [
			contentMorph := (self containerTree glamourPresentation 
			column: aGlamourColumn
			valueFor: self item) asMorph asReadOnlyMorph ]
		ifNotNil: [
			contentMorph := self textFieldMorphFor: nil.
			contentMorph setText: (
				self containerTree glamourPresentation 
					column: aGlamourColumn 
					valueFor: self item) asString.
			contentMorph hResizing: #rigid.
			contentMorph width: contentMorph textArea width.
			contentMorph textArea doubleClickAction: [ self containerTree forceStopStepping ].
			contentMorph announcer when: RubReturnEntered do: [ :ann |
				 aGlamourColumn modifiedBlock cull: contentMorph text cull: self item cull: self containerTree glamourPresentation.
				self containerTree resetStopStepping ] ].
	
	tagMorphs := self tagMorphsFrom: aGlamourColumn.
	tagMorphs ifEmpty: [ ^ contentMorph ].
	
	rowElements := OrderedCollection new
		add: contentMorph;
		addAll: tagMorphs;
		yourself.			
	^ (UITheme current newRowIn: World for: rowElements)