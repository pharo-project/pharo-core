addSuggestionToSourceCodeMenu: aBuilder 
	"<nautilusGlobalSourceCodeMenu>"
	
	| context model order |
	
	model := aBuilder model.
	context := SugsNautilusContext model: model.
	order := 0.
	(self findSuggestionsFor: context) 
		do:[:aSugg | 
			aBuilder
				item: aSugg label; 
				selector: #execute;	
				target: aSugg; 
				icon: aSugg icon;
				keyText: aSugg keyText;
				order: order.
				order := order +1 ].
	aBuilder items last withSeparatorAfter .
			
	
