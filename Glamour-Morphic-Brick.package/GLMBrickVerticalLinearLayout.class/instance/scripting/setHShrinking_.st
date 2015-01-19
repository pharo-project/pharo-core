setHShrinking: aBrick
	"my width is the width of the widest subbrick  + horizontal padding"
	aBrick width: [ ((aBrick subbricks detectMax: [ :each | each width ]) ifNil: [ 0 ] ifNotNil: [ :brick | brick width ]) + aBrick layoutProperties horizontalPadding ]