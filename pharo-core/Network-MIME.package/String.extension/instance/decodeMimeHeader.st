*Network-MIME
decodeMimeHeader
	"See RFC 2047, MIME Part Three: Message Header Extension for Non-ASCII  
	Text. Text containing non-ASCII characters is encoded by the sequence  
	=?character-set?encoding?encoded-text?=  
	Encoding is Q (quoted printable) or B (Base64), handled by  
	Base64MimeConverter / RFC2047MimeConverter.

	Thanks to Yokokawa-san, it works in m17n package.  Try the following:

	'=?ISO-2022-JP?B?U1dJS0lQT1AvGyRCPUJDKyVpJXMlQRsoQi8=?= =?ISO-2022-JP?B?GyRCJVElRiUjJSobKEIoUGF0aW8p?=' decodeMimeHeader.
"
	| input output temp charset decoder encodedStream encoding pos |
	input := self readStream.
	output := String new writeStream.
	
	[ output nextPutAll: (input upTo: $=).
	"ASCII Text"
	input atEnd ] whileFalse: 
		[ (temp := input next) = $? 
			ifTrue: 
				[ charset := input upTo: $?.
				encoding := (input upTo: $?) asUppercase.
				temp := input upTo: $?.
				input next.
				"Skip final ="
				(charset isNil or: [ charset size = 0 ]) ifTrue: [ charset := 'LATIN-1' ].
				encodedStream := MultiByteBinaryOrTextStream 
					on: String new
					encoding: charset.
				decoder := encoding = 'B' 
					ifTrue: [ Base64MimeConverter new ]
					ifFalse: [ RFC2047MimeConverter new ].
				decoder
					mimeStream: temp readStream;
					dataStream: encodedStream;
					mimeDecode.
				output nextPutAll: encodedStream reset contents.
				pos := input position.
				input skipSeparators.
				"Delete spaces if followed by ="
				input peek = $= ifFalse: [ input position: pos ] ]
			ifFalse: 
				[ output
					nextPut: $=;
					nextPut: temp ] ].
	^ output contents