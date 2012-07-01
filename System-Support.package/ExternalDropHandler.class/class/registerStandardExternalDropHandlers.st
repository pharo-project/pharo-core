initialization
registerStandardExternalDropHandlers
	"ExternalDropHandler registerStandardExternalDropHandlers"

	self registeredHandlers add: (
		ExternalDropHandler
			type: 'image/'
			extension: nil
			action: [:stream :pasteUp :event |
				pasteUp addMorph: (World drawingClass withForm: (Form fromBinaryStream: stream binary)) centeredNear: event position])