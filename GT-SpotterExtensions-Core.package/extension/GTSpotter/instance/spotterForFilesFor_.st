spotterForFilesFor: aStep
	<spotterOrder: 40>
	| processor |
	processor := aStep listProcessor.
	processor
		title: 'Files';
		itemIcon: [ GLMUIThemeExtraIcons glamorousBrowse ];
		wantsToDisplayOnEmptyQuery: false;
		filter: [ :originalQuery :stream | 
					self
						filterByQuery: originalQuery
						forReferencesComputedAs: [ :root | root files ]
						inProcessor: processor
						onStream: stream ]