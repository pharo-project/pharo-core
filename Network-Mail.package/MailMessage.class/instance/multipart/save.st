save
	"save the part to a file"
	| fileName file |
	fileName := self name
				ifNil: ['attachment' , MailMessage dateTimeSuffix].
	(fileName includes: $.) ifFalse: [
		#(isJpeg 'jpg' isGif 'gif' isPng 'png' isPnm 'pnm') pairsDo: [ :s :e |
			(self body perform: s) ifTrue: [fileName := fileName, '.', e]
		]
	].
	fileName := UIManager default request: 'File name for save?' initialAnswer: fileName.
	fileName isEmptyOrNil
		ifTrue: [^ nil].
	file := FileStream newFileNamed: fileName.
	file nextPutAll: self bodyText.
	file close