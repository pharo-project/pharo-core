haltLink
 	"for now it should just halt in base level"
	^ MetaLink new
		metaObject: self;
		selector: #halt;
		options: #(+ optionCompileOnLinkInstallation);
		level: level 