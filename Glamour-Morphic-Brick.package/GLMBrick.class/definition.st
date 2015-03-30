GLMBrickedMorph subclass: #GLMBrick
	uses: GLMBrickPropertiesTrait + GLMBrickLayoutTrait + GLMBrickStructureTrait + (GLMBrickGeometryTrait - {#privateBounds:})
	instanceVariableNames: 'brickBounds'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Glamour-Morphic-Brick-Widgets-Core'