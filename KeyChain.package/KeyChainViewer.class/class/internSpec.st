specs
internSpec
	<spec>
	| imageHeight |
	imageHeight := 140.
	
	^{#ComposableSpec.
			#add:. {	{#model. #list }.
							#layout:. {#FrameLayout. #fractions:offsets:. (0@0 corner: 1@1). (0@0 corner: 0@(-50)) }}.
			
			#add:. {	{#model. #add }.
							#layout:. {#FrameLayout. #fractions:offsets:. (0@1 corner: 0@1). (0@(-50) corner: 50@(-25)) }}.
			#add:. {	{#model. #edit }.
							#layout:. {#FrameLayout. #fractions:offsets:. (0@1 corner: 1@1). (50@(-50) corner: (-50)@(-25)) }}.
			#add:. {	{#model. #remove }.
							#layout:. {#FrameLayout. #fractions:offsets:. (1@1 corner: 1@1). ((-50)@(-50) corner: 0@(-25)) }}.
			
			#add:. {	{#model. #ok }.
							#layout:. {#FrameLayout. #fractions:offsets:. (0@1 corner: 1@1). (0@(-25) corner: 0@0) }}}