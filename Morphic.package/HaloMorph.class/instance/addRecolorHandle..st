handles
addRecolorHandle: haloSpec
	"Add a recolor handle to the receiver, if appropriate"

	| recolorHandle |

	"since this halo now opens a more general properties panel, allow it in all cases"
	"innerTarget canSetColor ifTrue:"

	recolorHandle := self addHandle: haloSpec on: #mouseUp send: #doRecolor:with: to: self.
	recolorHandle on: #mouseUp send: #doRecolor:with: to: self

