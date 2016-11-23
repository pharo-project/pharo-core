loadAll
	#(pharo 'pharo1.x' 'pharo2.x' 'pharo3.x' 'pharo4.x' 'pharo5.x' 'pharo6.x'
		squeak 'squeak4.x' 'squeak5.x') do: [ :attribute |
			self addCustomProjectAttribute: attribute ]