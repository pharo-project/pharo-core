menuOn: aBuilder

	<RubSmalltalkCodeMenu>
	aBuilder
		item: 'Suggestions...';
		selector: #smartSuggestions;
		target: aBuilder model textArea editor;
		keyText: 't ';
		order: 0;
		icon: Smalltalk ui icons smallAuthoringTools;
		with: [ SugsMenuBuilder buildContextMenuOn: aBuilder]