testOpenBrowserOnThisHelpType
	|block|
	block := [
		|browser|
		browser := 	HelpBrowser openOn: CustomHelp.
		World doOneCycleNow. 
		browser close ].
	self shouldnt: block raise: Error
 