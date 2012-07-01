ci
newGenerateNewUpdateMethodSilentlyPreLoad: preload postLoad: postLoad
	"ScriptLoader new newGenerateNewUpdateMethod"
	
	| str mthName preamble postscript |
	str := ReadWriteStream on: (String new: 1000).
	mthName := 'update', self currentUpdateVersionNumber asString.
	str nextPutAll: mthName ; cr  ; tab.
	str nextPutAll: '"self new ', mthName, '"'; crtab. 
	preamble := preload reset contents asString.
	preamble isEmptyOrNil ifFalse: [str nextPutAll: preamble; ensureEndsWith: $.; crtab ].

	str nextPutAll: 'self withUpdateLog: ' ; nextPut: $'; nextPutAll: self commentForCurrentUpdate ; nextPut: $'; nextPut: $. .
	str crtab.
	str nextPutAll: 'self loadTogether: '.
	str nextPutAll: 'self script' , self currentScriptVersionNumber asString, ' merge: false.'.
	str crtab.
	postscript := postLoad reset contents asString. 
	postscript isEmptyOrNil ifFalse: [str nextPutAll: postscript; ensureEndsWith: $.; crtab ].
	
	str nextPutAll: 'self flushCaches.'; cr.
	
	^ str contents