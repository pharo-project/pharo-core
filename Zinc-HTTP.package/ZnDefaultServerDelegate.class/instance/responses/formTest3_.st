formTest3: request
	| contents filename contentType html |
	contents := filename := contentType := ''.
	(request hasEntity and: [ request contentType matches: ZnMimeType multiPartFormData ])
		ifTrue: [ 
			(request entity partNamed: #file ifNone: [ nil ]) 
				ifNotNil: [ :part |
					filename := part fileName.
					contents := part contents.
					contentType := part  contentType.
					contentType isBinary ifTrue: [ contents := contents hex ] ] ].
	html := '<h1>Form Test 3</h1>',
		'<form action="form-test-3" accept-charset="utf-8" enctype="multipart/form-data" method="post">',
		'file <input type="file" name="file"> ',
		'<input type="submit">',
		'</form>',
		'<p>filename = <em>{1}</em></p>',
		'<p>content-type = <em>{2}</em></p>',
		'<p>contents = <em>{3}</em></p>' format: { filename. contentType. contents }.
	^ ZnResponse ok: (ZnEntity html: html)