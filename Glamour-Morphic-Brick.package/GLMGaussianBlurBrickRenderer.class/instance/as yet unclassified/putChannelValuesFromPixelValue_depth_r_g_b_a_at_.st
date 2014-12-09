putChannelValuesFromPixelValue: p depth: d r: mR g: mG b: mB a: mA at: index
	"Convert a pixel value for the given display depth into a color."
	"Details: For depths of 8 or less, the pixel value is simply looked up in a table. For greater depths, the color components are extracted and converted into a color."
	| r g b alpha |
	d = 8 ifTrue: [ ^ self putColorInChannels: (Color indexedColors at: (p bitAnd: 255) + 1) r: mR g: mG b: mB a: mA at: index ].
	d = 4 ifTrue: [ ^ self putColorInChannels: (Color indexedColors at: (p bitAnd: 15) + 1) r: mR g: mG b: mB a: mA at: index ].
	d = 2 ifTrue: [ ^ self putColorInChannels: (Color indexedColors at: (p bitAnd: 3) + 1) r: mR g: mG b: mB a: mA at: index ].
	d = 1 ifTrue: [ ^ self putColorInChannels: (Color indexedColors at: (p bitAnd: 1) + 1) r: mR g: mG b: mB a: mA at: index ].
	d = 16 | (d = 15) ifTrue: 
		[ "five bits per component"
		r := (p bitShift: -10) bitAnd: 31.
		g := (p bitShift: -5) bitAnd: 31.
		b := p bitAnd: 31.
		(r = 0 and: [ g = 0 ]) ifTrue: 
			[ b = 0 ifTrue: [ ^ self putColorInChannels: (Color transparent) r: mR g: mG b: mB a: mA at: index ].
			b = 1 ifTrue: [ ^ self putColorInChannels: (self black) r: mR g: mG b: mB a: mA at: index ] ].
		^ self putRGBChannelsRed: r green: g blue: b alpha: 31.0 range: 31.0 r: mR g: mG b: mB a: mA at: index ].
	d = 32 ifTrue: 
		[ "eight bits per component; 8 bits of alpha"
		r := (p bitShift: -16) bitAnd: 255.
		g := (p bitShift: -8) bitAnd: 255.
		b := p bitAnd: 255.
		alpha := p bitShift: -24.
		alpha = 0 ifTrue: [ ^ self putColorInChannels: (Color transparent) r: mR g: mG b: mB a: mA at: index ].
		(r = 0 and: [ g = 0 and: [ b = 0 ] ]) ifTrue: [ ^ self putColorInChannels: (Color transparent) r: mR g: mG b: mB a: mA at: index ].
		alpha < 255 
			ifTrue: 
				[ ^ self putRGBChannelsRed: r green: g blue: b alpha: alpha range: 255.0 r: mR g: mG b: mB a: mA at: index ]
			ifFalse:
				[ ^ self putRGBChannelsRed: r green: g blue: b alpha: 255.0 range: 255.0 r: mR g: mG b: mB a: mA at: index ] ].
	d = 12 ifTrue: 
		[ "four bits per component"
		r := (p bitShift: -8) bitAnd: 15.
		g := (p bitShift: -4) bitAnd: 15.
		b := p bitAnd: 15.
		^ self putRGBChannelsRed: r green: g blue: b alpha: 15.0 range: 15.0 r: mR g: mG b: mB a: mA at: index ].
	d = 9 ifTrue: 
		[ "three bits per component"
		r := (p bitShift: -6) bitAnd: 7.
		g := (p bitShift: -3) bitAnd: 7.
		b := p bitAnd: 7.
		^ self putRGBChannelsRed: r green: g blue: b alpha: 7.0 range: 7.0 r: mR g: mG b: mB a: mA at: index ].
	self error: 'unknown pixel depth: ' , d printString