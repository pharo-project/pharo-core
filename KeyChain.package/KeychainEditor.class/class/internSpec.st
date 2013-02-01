specs
internSpec
	<spec>
	
	^{#ComposableSpec .
			#add: . {{#model . #groupLabel } . #layout: .  #(0 0 0 0 0 075 25) }.
			#add: .  {{#model . #groupTextField } .#layout: . #(0 0 1 0 75 0 0 25) }.	
			#add: . {{#model . #usernameLabel } . #layout: . #(0 0 0 0 0 25 75 50) }. 
			#add: . {{#model . #usernameTextField } . #layout: . #(0 0 1 0 75 25 0 50) }.
			#add: . {{#model.  #setPassword } . #layout: . #(0 0 1 0 0 50 0 75) }}