haltLinkOneShot
	 "for now it should just halt in base level"
	^ MetaLink new
		metaObject: self;
		selector: #haltNow;
		options: #(+ optionCompileOnLinkInstallation);
		level: level 