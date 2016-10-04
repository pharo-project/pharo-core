version394: spec 
        <version: '3.9.4' imports: #('2.3-baseline')>

       spec for: #common do: [
			spec description: 'Extended PaintMode to PaintOptions'.
			spec blessing: #development.

			spec package: 'Athens-Balloon' with: 'Athens-Balloon-MarcusDenker.20'.
			spec package: 'Athens-Cairo' with: 'Athens-Cairo-AliakseiSyrel.124'.
			spec package: 'Athens-CairoPools' with: 'Athens-CairoPools-AliakseiSyrel.15'.
			spec package: 'Athens-Core' with: 'Athens-Core-AliakseiSyrel.58'.
			spec package: 'Athens-Text' with: 'Athens-Text-NicolaiHess.16'.
			spec package: 'Athens-Morphic' with: 'Athens-Morphic-AliakseiSyrel.65'.
			spec package: 'Athens-Examples' with: 'Athens-Examples-TudorGirba.43'.
			spec package: 'Athens-Tutorial' with: 'Athens-Tutorial-StephaneDucasse.10'.
			spec package: 'Athens-SVG' with: 'Athens-SVG-AliakseiSyrel.16' ]