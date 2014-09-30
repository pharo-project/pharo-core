pageOf: aSubMorph
	"returns 0 if morph is not in pager"
	|parent page|	
	
	aSubMorph ifNil: [ ^ 0 ].
	
	parent := aSubMorph.
	
	[parent isNotNil & ((parent == transform) not) ] whileTrue: [
		page := parent.
		parent := parent owner.
	].
	
	^ parent isNil ifTrue: [ 0 ] ifFalse: [ panes indexOf: page. ].
	