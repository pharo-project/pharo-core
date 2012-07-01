private
defaultGZipHandler
	^ExternalDropHandler
		type: nil
		extension: 'gz'
		action: [:stream :pasteUp :event |
			stream viewGZipContents]