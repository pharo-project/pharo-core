readInHelpBrowser

	^ HelpBrowser openOn: (
		HelpTopic new
			addSubtopic: self asHelpTopic;
			yourself)