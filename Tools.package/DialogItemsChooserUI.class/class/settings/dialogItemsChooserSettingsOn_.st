dialogItemsChooserSettingsOn: aBuilder
	<systemsettings>
		(aBuilder group: #dialogItemsChooser)
		target: self;
		label: 'Items Chooser Dialog Window' translated;
		parent: #morphic;
		description: 'Settings related to the Items Chooser Dialog Window' translated;
			with: [
				(aBuilder setting: #alreadySearchedUnselectedItemsListMaxSize)
				label: 'Size of the Unselected Items History' translated.
				(aBuilder setting: #alreadySearchedSelectedItemsListMaxSize)
				label: 'Size of the Selected Items History' translated.]