*Graphics-Fonts
installTTCFont: aTTCFont foregroundColor: foregroundColor backgroundColor: backgroundColor 
	"Set up the parameters.  Since the glyphs in a TTCFont is 32bit depth form, it tries to use rule=34 to get better AA result if possible."
	aTTCFont depth = 32 ifTrue: 
		[ destForm depth <= 8 
			ifTrue: 
				[ self colorMap: (self 
						cachedFontColormapFrom: aTTCFont depth
						to: destForm depth).
				self combinationRule: Form paint ]
			ifFalse: 
				[ self colorMap: nil.
				self combinationRule: 34 ].
		halftoneForm := nil.
		sourceY := 0.
		height := aTTCFont height ]