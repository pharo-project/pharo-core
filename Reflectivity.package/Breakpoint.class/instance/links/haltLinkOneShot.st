haltLinkOneShot
	 "for now it should just halt in base level"
	^ MetaLink new
		metaObject: self;
		selector: #haltNow;
		level: 0 