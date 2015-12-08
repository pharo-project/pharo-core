version101: spec
	<version: '1.0.1' imports: #('1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'release'.
		spec description: '- use MethodReference>>methodSymbol for portability'.
		spec author: 'DaleHenrichs'.
		spec timestamp: '02/11/10 10:22:48'.
		spec 
			package: 'Gofer-Core' with: 'Gofer-Core-DaleHenrichs.117';
			package: 'Gofer-Tests' with: 'Gofer-Tests-lr.115'.].
