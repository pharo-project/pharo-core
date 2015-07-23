gtInspectorCriticsIn: composite
	"This provides a list of all critics"
	<gtInspectorPresentationOrder: 20>
	composite list 
		when: [ self cachedCritics notEmpty ];
		title: self cachedCritics size asString, (' critic' asPluralBasedOn: self critics);
		titleIcon: [ CircleMorph new
			extent: 16 @ 16;
			borderWidth: 0;
			color: Color red darker darker;
			addMorphCentered:
				(self cachedCritics size asStringMorph
					color: Color white;
					emphasis: 1;
					yourself);
			iconOrThumbnail ];
		display: [ self critics ];
		icon: #icon;
		format: #title;
		tags: [ :critic | { critic rule category } ]