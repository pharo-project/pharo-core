utility
loadCompositionMapping

	self  parseCompositionMappingFrom: (ZnClient new url: 'http://unicode.org/Public/UNIDATA/UnicodeData.txt'; get) readStream
