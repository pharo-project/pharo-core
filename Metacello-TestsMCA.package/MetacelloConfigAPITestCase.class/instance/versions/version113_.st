version113: spec 
	<version: '1.1.3' imports: #( '1.1.3-baseline' )>
	
	spec for: #outer do: [
		spec
			package: 'Example-Core' with: 'Example-Core-dkh.1';
			package: 'Example-Test' with: 'Example-Test-dkh.1'.
		spec for: #nested do: [
			spec
				package: 'Example-Core' with: 'Example-Core-dkh.2';
				yourself ]].
	spec for: #extra do: [
		spec
			package: 'Example-Core' with: 'Example-Core-dkh.3';
			yourself].
