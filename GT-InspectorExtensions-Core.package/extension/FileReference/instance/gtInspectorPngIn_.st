gtInspectorPngIn: composite
	<gtInspectorPresentationOrder: 10>
	composite morph
			title: 'Picture';
			display: [ self binaryReadStreamDo: [ :stream | PNGReadWriter formFromStream: stream ] ];
			when: [ self mimeTypes notNil and: [ self mimeTypes first matches: ZnMimeType imagePng ] ]