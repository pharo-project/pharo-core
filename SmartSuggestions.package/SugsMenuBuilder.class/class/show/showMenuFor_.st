showMenuFor: model
	| suggs menu context |

	context := [ SugsAbstractContext contextFor: model ]
		ifError: [ 
			"If we aren't in the right context we will fail in populate the suggestions so... better not"
			^ self ].
	suggs := SugsMenuBuilder findSuggestionsFor: context.
	menu := UIManager default newMenuIn: model model for: model.
	menu addTitle: 'Suggestions > ' translated , context selectedNodeText.
	suggs do: [ :aSugg | (menu add: aSugg label target: aSugg selector: #execute) icon: aSugg icon ].
	context selectTheTextForTheNode.
	menu setInvokingView: self.
	menu invokeModal