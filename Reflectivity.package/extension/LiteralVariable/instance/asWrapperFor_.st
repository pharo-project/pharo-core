asWrapperFor: aLink
	^LinkWrapperGlobal new
		key: self key;
		value: self value;
		setLink: aLink;
		wrappedVariable: self.