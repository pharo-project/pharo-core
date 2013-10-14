baseline112: spec 
	<version: '1.1.2-baseline'>
	
	spec for: #common do: [
		spec 
			package: 'Example-Core'.
		spec for: #nested do: [
			spec
				package: 'Example-Base';
				package: 'Example-Test-Nested';
				yourself ]].
	spec for: #extra do: [
		spec
			package: 'Example-Test';
			yourself].
