reflectionContinued
	^ Lesson
title: 'Reflection continued' 
lesson: 
'"So cool, isn''t it ?  Before going further, let''s remove this method:"

PharoTutorial respondsTo: #goToNextLesson.

PharoTutorial class removeSelector: #goToNextLesson.

PharoTutorial respondsTo: #goToNextLesson.


"Then move forward:"

PharoTutorial default executeMethod: (PharoTutorial lookupSelector:#next).'