smallHierarchyBrowserIcon
	"Private - Generated method"
	^icons
			at: #smallHierarchyBrowserIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallHierarchyBrowserIconContents readStream) ].