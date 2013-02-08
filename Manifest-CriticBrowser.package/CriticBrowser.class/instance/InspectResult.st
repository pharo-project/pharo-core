private
InspectResult

	rulesModel selectedItem ifNotNil: [:rule | Inspector openOn: rule result]