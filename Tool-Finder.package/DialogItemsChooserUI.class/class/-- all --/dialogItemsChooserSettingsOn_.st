dialogItemsChooserSettingsOn: aBuilder
	<systemsettings>
		(aBuilder group: #dialogItemsChooser)
		target: self;
		label: 'Items Chooser Dialog Window';
		parent: #morphic;
		description: 'Settings related to the Items Chooser Dialog Window' ;
			with: [
				(aBuilder setting: #alreadySearchedUnselectedItemsListMaxSize)
					label: 'Size of the Unselected Items History'.
				(aBuilder setting: #alreadySearchedSelectedItemsListMaxSize)
					label: 'Size of the Selected Items History'.]