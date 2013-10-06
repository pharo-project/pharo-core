testNoSuggestionForSuperNode
	| suggestions |

	suggestions :=SugsMenuBuilder findSuggestionsFor: SugsMockContext superContext.
	self assert: suggestions isEmpty.