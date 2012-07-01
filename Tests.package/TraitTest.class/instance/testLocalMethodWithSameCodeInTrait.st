testing
testLocalMethodWithSameCodeInTrait
	"Test whether there are no unintentional overridden traits methods"

	SystemNavigation default allBehaviorsDo: [ :each |
		each hasTraitComposition ifTrue: [
			each methodDict keys do: [ :selector |
				(each includesLocalSelector: selector) ifTrue: [
					(each traitComposition traitProvidingSelector: selector) ifNotNil: [ :trait |
						(trait selectors includes: selector) ifTrue: [
							self deny: (trait >> selector = (each >> selector)) ] ] ] ] ] ]