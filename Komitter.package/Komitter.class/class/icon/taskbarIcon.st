taskbarIcon

	^ icon ifNil: [ icon := Pharo3UIThemeIcons form16x16FromContents: self iconData ]