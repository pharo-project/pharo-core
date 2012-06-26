stream creation
openStream: readWrite forceNew: forceNew encoding: stringEncoding
	^self directory openStream: self name mode: readWrite forceNew: forceNew encoding: stringEncoding