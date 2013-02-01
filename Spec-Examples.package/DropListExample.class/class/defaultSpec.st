specs
defaultSpec

	^ { #ComposableSpec.
			#add:.	{ self topSpec . #layout: . #(0 0 1 0 0 0 0 30) }.
			#add:.	{{#model . #container } . #layout: .  #(0 0 1 1 0 42 0 0). }}