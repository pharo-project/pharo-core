readFrom: aPangoLayout
	self justify:( self primGetJustifyFrom: aPangoLayout).
	wrap  := self wrapValueFrom: (self primGetWrapFrom: aPangoLayout).
	tabs  := self getTabsFrom: aPangoLayout.
	spacing := self primGetSpacingFrom: aPangoLayout.
	indentation := self primGetIndentFrom: aPangoLayout.
	ellipsize := self ellipsizeValueFrom:(self primGetEllipsizeFrom: aPangoLayout).
	alignment := self alignmentValueFrom: (self primGetAlignmentFrom: aPangoLayout).
	