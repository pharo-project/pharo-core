version015: spec
	<version: '0.15' imports: #('0.6-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'avoid circular dependency on GT-Tools'.
		spec author: 'PavelKrivanek'.
		spec timestamp: '6/7/2016 15:20'.
		spec project: 'Ston' with: '0.19'.
		spec package: #'Tool-Catalog' with: 'Tool-Catalog-PavelKrivanek.37'. ].
