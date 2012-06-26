history
okToChange
	"This method is called by SystemWindow just before closing a workspace window. 
	The caller of this method is SystemWindow>>delete"
	
	| textMorphs textMorph contentAsString |
	textMorphs := self dependents select: [:c | c isKindOf: PluggableTextMorph].
	textMorphs ifEmpty: [ ^ true ]. "This case should normally not happen"
	
	textMorph := textMorphs first.
	contentAsString := (textMorph text) asString.
	self lastContents addFirst: contentAsString.
	self trimHistoryIfNecessary.
	^ true