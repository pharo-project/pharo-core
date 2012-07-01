menu messages
fileItIn
	"Make a Stream on the text selection and fileIn it.
	 1/24/96 sw: moved here from FileController; this function can be useful from any text window that shows stuff in chunk format"

	| selection |
	selection := self selection.
	(ReadWriteStream on: selection string from: 1 to: selection size) fileIn
