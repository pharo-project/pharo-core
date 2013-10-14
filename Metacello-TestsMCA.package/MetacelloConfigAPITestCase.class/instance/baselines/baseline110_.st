baseline110: spec 
	<version: '1.1.0-baseline'>
	
	spec for: #common do: [
		spec 
			package: 'Example-Core';
			package: 'Example-Base';
			package: 'Example-Test1' with: [ 
				spec 
					includes: 'Example-Core';
					requires: 'Example-Base' ];
			package: 'Example-Test2' with: [ 
				spec 
					includes: 'Example-Core';
					supplyingAnswers: #(#('captionMatch' 'answer')) ];
			package: 'Example-Test3' with: [ 
				spec 
					supplyingAnswers: #(#('captionMatch' 'answer'));
					requires: 'Example-Base' ];
			package: 'Example-Test4' with: [ 
				spec 
					includes: 'Example-Core';
					supplyingAnswers: #(#('captionMatch' 'answer'));
					requires: 'Example-Base' ];
			yourself].
