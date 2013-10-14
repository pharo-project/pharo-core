baseline14: spec 
	<version: '1.4-baseline'>
	
	spec for: #common do: [
		spec 
			package: 'Example-Core' with: [
				spec includes: #('Example-GemStone-Core') ];

			package: 'Example-2' with: [
				spec requires: #('Example-Core') ];
			package: 'Example-3' with: [
				spec requires: #('Example-Core') ];
			package: 'Example-Core';
			package: 'Example-1' with: [
				spec requires: #('Example-Core') ];

			package: 'Example-GemStone300-Core' with: [
				spec 
					requires: #('Example-Core');
					includes: #('Example-GemStone-Core') ];

			package: 'Example-GemStone-Core' with: [
				spec requires: #('Example-Core') ];
			package: 'Example-Core' with: [
				spec includes: #('Example-GemStone300-Core') ];
		yourself.]