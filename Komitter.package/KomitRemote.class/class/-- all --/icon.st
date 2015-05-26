icon
	self == KomitRemote ifTrue: [ ^ nil ].

	^ icon ifNil: [ icon := Pharo3UIThemeIcons form16x16FromContents: self iconContents ]