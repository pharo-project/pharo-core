context stack menu
where
	"Select the expression whose evaluation was interrupted."

	selectingPC := true.
	self contextStackIndex: contextStackIndex oldContextWas: self selectedContext
