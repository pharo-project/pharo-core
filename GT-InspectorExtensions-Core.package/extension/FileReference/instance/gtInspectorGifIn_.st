gtInspectorGifIn: composite
	<gtInspectorPresentationOrder: 10>
	composite morph
			title: 'Picture';
			display: [ self binaryReadStreamDo: [ :stream | GIFReadWriter formFromStream: stream ] ];
			when: [ self mimeTypes notNil and: [ self mimeTypes first matches: ZnMimeType imageGif ] ]