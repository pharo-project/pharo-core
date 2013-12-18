aboutText
	^ super aboutText,
		String crlf,
		MetacelloConfigurationBrowserPane pharoDistributionRepository .
	