version1022: spec
	<version: '1.0.2.2' imports: #('1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'release'.
		spec description: '- fix a bug that prevented gofer from resolving packages in http://www.squeaksource.com/Swazoo'.
		spec author: 'DaleHenrichs'.
		spec timestamp: '12/13/2010 16:42'.
		spec 
			package: 'Gofer-Core' with: 'Gofer-Core-DaleHenrichs.122';
			package: 'Gofer-Tests' with: 'Gofer-Tests-DaleHenrichs.117'.].
