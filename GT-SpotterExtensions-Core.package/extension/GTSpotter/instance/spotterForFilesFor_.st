spotterForFilesFor: aStep
	<spotterOrder: 40>
	| processor |
	processor := aStep listProcessor.
	processor
		title: 'Files';
		itemIcon: [ GLMUIThemeExtraIcons glamorousBrowse ];
		wantsToDisplayOnEmptyQuery: false;
		filter: [ :context | 
			self
				filterInContext: context
				forReferencesComputedAs: [ :root | root files ] ]