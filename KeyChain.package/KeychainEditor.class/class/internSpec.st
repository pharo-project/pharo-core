specs
internSpec
	<spec>
	| imageHeight |
	imageHeight := 140.
	
	^{#ComposableSpec.
			#add:. {	{#model. #groupLabel }.
							#layout:. {#FrameLayout. #fractions:offsets:. (0@0 corner: 0@0). (0@0 corner: 75@25) }}.
			#add:. {	{#model. #groupTextField }.
							#layout:. {#FrameLayout. #fractions:offsets:. (0@0 corner: 1@0). (75@0 corner: 0@25) }}.
							
			#add:. {	{#model. #usernameLabel }.
							#layout:. {#FrameLayout. #fractions:offsets:. (0@0 corner: 0@0). (0@25 corner: 75@50) }}.
			#add:. {	{#model. #usernameTextField }.
							#layout:. {#FrameLayout. #fractions:offsets:. (0@0 corner: 1@0). (75@25 corner: 0@50) }}.
			
			#add:. {	{#model. #setPassword }.
							#layout:. {#FrameLayout. #fractions:offsets:. (0@0 corner: 1@0). (0@50 corner: 0@75) }}}