gtInspectorCriticsIn: composite
	"This provides a list of all critics"
	<gtInspectorPresentationOrder: 20>
	| critics |
	critics := self critics.
	
	composite list 
		when: [ critics notEmpty ];
		title: critics size asString, (' critic' asPluralBasedOn: critics);
		titleIcon: [ CircleMorph new
			extent: 16 @ 16;
			borderWidth: 0;
			color: Color red darker darker;
			addMorphCentered:
				(critics size asStringMorph
					color: Color white;
					emphasis: 1;
					yourself);
			iconOrThumbnail ];
		display: [ self critics ];
		icon: #icon;
		format: #title;
		tags: [ :critic | { critic rule group } ]