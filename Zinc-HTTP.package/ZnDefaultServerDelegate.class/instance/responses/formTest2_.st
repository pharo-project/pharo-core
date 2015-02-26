formTest2: request
	| input html |
	input := 'input'.
	(request hasEntity and: [ request contentType matches: ZnMimeType applicationFormUrlEncoded  ])
		ifTrue: [ input := request entity at: #input ifAbsent: [ 'input' ] ].
	html := '<h1>Form Test 2</h1>',
		'<form action="form-test-2" accept-charset="utf-8" method="post">',
		'Input <input type="input" name="input" value="{1}"> ',
		'<input type="submit"> for input <em>{1}</em>',
		'</form>' format: { input }.
	^ ZnResponse ok: (ZnEntity html: html)