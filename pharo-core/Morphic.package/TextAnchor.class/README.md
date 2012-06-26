TextAnchors support anchoring of images in text.  A TextAnchor exists as an attribute of text emphasis, and it gets control like a FontReference, through the emphasizeScanner: message.  Depending on whether its anchoredMorph is a Morph or a Form, it repositions the morph, or displays the form respectively.  The coordination between composition, display and selection can best be understood by browsing the various implementations of placeEmbeddedObject:.

In the morphic world, simply embed any form or morph in text.

	Workspace new
		contents: (Text withAll: 'foo') , (Text string: '*' attribute: (TextAnchor new anchoredMorph: MenuIcons confirmIcon)) , (Text withAll: 'bar');
		openLabel: 'Text with Form'.

	Workspace new
		contents: (Text withAll: 'foo') , (Text string: '*' attribute: (TextAnchor new anchoredMorph: EllipseMorph new)) , (Text withAll: 'bar');
		openLabel: 'Text with Morph'.

In this case you select a piece of the screen, and it gets anchored to a one-character text in the editor's past buffer.  If you then paste into some other text, you will see the image as an embedded image.