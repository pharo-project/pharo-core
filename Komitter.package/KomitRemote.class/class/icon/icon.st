icon
	self == KomitRemote ifTrue: [ ^ nil ].

	^ icon ifNil: [ icon := Smalltalk ui icons form16x16FromContents: self iconContents ]