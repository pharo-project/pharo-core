categories & search pane
textPaneWithSelector: aSelector
	"If, among my window's paneMorphs, there is a text pane defined with aSelector as its retriever, answer it, else answer nil"

	| aWindow |
	^ (aWindow := self containingWindow) ifNotNil:
		[aWindow paneMorphSatisfying:
			[:aMorph | (aMorph isKindOf: PluggableTextMorph) and:
				[aMorph getTextSelector == aSelector]]]