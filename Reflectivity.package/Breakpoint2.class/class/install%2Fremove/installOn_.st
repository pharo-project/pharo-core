installOn: aMethod
	| breakLink |
	breakLink := MetaLink new
		metaObject: self;
		options: #(+ optionCompileOnLinkInstallation);
		selector: #break.		
	
	aMethod ast link: breakLink.