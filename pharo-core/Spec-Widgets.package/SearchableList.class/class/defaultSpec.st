specs
defaultSpec

	^ {#ComposableSpec .
		#add: . {{#model . #searchModel.}.
				#layout: . {#FrameLayout . 
								#fractions:offsets: . (0@0 corner: 1@0). (0@0 corner: (0@25))}} .
		#add: . {{#model . #listModel.}.
				#layout: . {#FrameLayout . 
								#fractions:offsets: . (0@0 corner: 1@1). (0@25corner:  0@0)}}
		}