autoDeselect

	^ self resetListSelector notNil or: [ autoDeselect ifNil: [ true ] ]