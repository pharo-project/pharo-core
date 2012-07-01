*famfam-icons-accessing
workspaceIcon
	"Private - Generated method"
	^ icons
			at: #'workspaceIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self workspaceIconContents readStream) ].