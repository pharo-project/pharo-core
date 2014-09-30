gtInspectorJpegIn: composite
	<gtInspectorPresentationOrder: 10>
	composite morph
			title: 'Picture';
			display: [ self binaryReadStreamDo: [ :stream | JPEGReadWriter formFromStream: stream ] ];
			when: [ self mimeTypes notNil and: [ self mimeTypes first matches: ZnMimeType imageJpeg ] ]