baseline107: spec 
	<version: '1.0.7-baseline'>
	
	spec for: #common do: [
		spec 
			package: 'Example-Core' with: [ 
				spec 
					preLoadDoIt: #preloadForSupplyingAnswers;
					postLoadDoIt: #postloadForSupplyingAnswers;
					supplyingAnswers: #(#('preload' 'preload answer') #('postload' 'postload answer')) ];
			package: 'Example-Tests' with: [
				spec supplyingAnswers: 
					#(
						#('string' 'preload answer') 
						#('symbol' #'default')
						#('integer' 1)
						#('boolean' true)
						#('another boolean' false)
						#('character' $a)
					)]].
