pharo - updates
update20137
	"self new update20137"
	self withUpdateLog: 'FS part monticello/scriptloader'.
	self loadTogether: self script127 merge: false.
	(Smalltalk at: #FileDirectory) allSubInstances do: [ :fileDirectory|
		fileDirectory becomeForward: fileDirectory fullName asFileReference ].
	self flushCaches.
