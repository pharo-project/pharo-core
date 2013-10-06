windowSpec

	^ { #StandardWindow.
			#addMorphBack:.	{ self defaultSpec . #layout:. #(FrameLayout) }.
			#title:.				self title}