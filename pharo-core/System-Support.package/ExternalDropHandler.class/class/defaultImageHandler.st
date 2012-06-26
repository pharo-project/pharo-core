private
defaultImageHandler
	
	^ExternalDropHandler
		type: 'image/'
		extension: nil
		action: [:stream :pasteUp :event | | image sketch |
			stream binary.
			image := Form fromBinaryStream: ((RWBinaryOrTextStream with: stream contents) reset).
			sketch := World drawingClass withForm: image.
			pasteUp addMorph: sketch centeredNear: event position.
			image := sketch := nil]