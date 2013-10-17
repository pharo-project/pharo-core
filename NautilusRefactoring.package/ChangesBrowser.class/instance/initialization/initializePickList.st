initializePickList
		
	pickList
		labelClickable: false;
		defaultValue: true;
		blockToPerformOnWrappers: [:wrapper | wrapper on: WidgetBuilt send: #registerWidget: to: self ];
		displayBlock: [ :item | item nameToDisplay ]