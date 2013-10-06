setUpdatablePanesFrom: getSelectors
	| aList possibles |
	"Set my updatablePanes inst var to the list of panes which are list panes with the given get-list selectors.  Order is important here!  Note that the method is robust in the face of panes not found, but a warning is printed in the transcript in each such case"

	aList := OrderedCollection new.
	possibles := OrderedCollection new.
	self allMorphsDo: [ :pane | 
		(pane isKindOf: PluggableListMorph) ifTrue: [
			possibles add: pane.
		].
	].

	getSelectors do: [:sel | | aPane | 
		aPane := possibles detect: [ :pane | pane getListSelector == sel] ifNone: [nil].
		aPane
			ifNotNil:
				[aList add: aPane]
			ifNil:
				["Transcript cr; show: 'Warning: pane ', sel, ' not found.'"]].
	updatablePanes := aList asArray