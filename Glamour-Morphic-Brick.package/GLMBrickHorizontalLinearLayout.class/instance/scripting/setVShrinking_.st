setVShrinking: aBrick
	"my height is the height of the highest subbrick + vertical padding"
	aBrick height: [ ((aBrick subbricks detectMax: [ :each | each height ]) ifNil: [ 0 ] ifNotNil: [ :brick | brick height ])  + aBrick layoutProperties verticalPadding ]