spotterForSettingsFor: aStep
	<spotterOrder: 100>
	aStep listProcessor
		title: 'Settings';
		allCandidates: [ (SettingTree new acceptableKeywords: SettingBrowser settingsKeywords) nodeList ];
		itemName: [ :each | each spotterLabel ];
		filter: GTFilterSubstring;
		wantsToDisplayOnEmptyQuery: false