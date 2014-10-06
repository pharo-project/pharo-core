gtInspectorFloatIn: composite
	<gtInspectorPresentationOrder: 30>
	^ composite table
		title: [ 'Float' ];
		display: [ 
					{'significand' -> self significand.
					'exponent' -> self exponent} ];
		column: 'Key' evaluated: #key;
		column: 'Value' evaluated: #value;
		send: #value