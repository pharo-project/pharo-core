desktop
desktopSettingsOn: aBuilder 
	(aBuilder group: #desktopSettings)
		label: 'Desktop';
		target: self;
		noOrdering;
		with: [
			(aBuilder setting: #showDesktopLogo)
				label: 'Show logo' translated;
				description: 'If true, then a logo if shown on the top left of the desktop' translated;
				with: [
					(aBuilder setting: #desktopLogoFileName)
						type: #FilePath;
						description: 'The path of an image file for your own logo, the default pharo logo is used if empty.' translated;
						label: 'Logo image file name'].
			self desktopColorSettingsOn: aBuilder.
			(aBuilder setting: #desktopImageFileName)
				type: #FilePath;
				description: 'The path of an image file which will be imported as a form and displayed as your desktop background' translated;
				label: 'Desktop background image file name']
						