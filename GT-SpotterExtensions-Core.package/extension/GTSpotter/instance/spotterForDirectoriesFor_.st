spotterForDirectoriesFor: aStep
	<spotterOrder: 50>
	| processor |
	processor := aStep listProcessor.
	processor
		title: 'Directories';
		itemIcon: [ GLMUIThemeExtraIcons glamorousFolder ];
		wantsToDisplayOnEmptyQuery: false;
		filter: [ :context | 
			self
				filterInContext: context
				forReferencesComputedAs: [ :root | root directories ] ]