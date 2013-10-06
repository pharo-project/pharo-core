getSelectedFile
	"Answer a filestream on the selected file.  If it cannot be opened for read/write, try read-only before giving up; answer nil if unsuccessful"

	ok ifFalse: [ ^ nil ].
	reference ifNil: [ ^ nil ].
	reference isFile ifFalse: [ ^ nil ].
	^ reference readStream.