version11: spec
	<version: '1.1' imports: #('1.0-baseline' )>
	
	spec for: #common do: [
		spec 
			package: 'GoferFoo' with: [
				spec
					file: 'GoferFoo-lr.1';
					supplyingAnswers: #(#('postload' 'postload answer'));
					postLoadDoIt: #postloadSupplyingAnswers ];
			package: 'GoferBar' with: 'GoferBar-jf.1';
			yourself. ].
