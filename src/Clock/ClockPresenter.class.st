Class {
	#name : 'ClockPresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'time',
		'active'
	],
	#category : 'Clock',
	#package : 'Clock'
}

{ #category : 'initialization' }
ClockPresenter >> connectPresenters [
	
	[ 
		[ active ] whileTrue: [
			200 milliSeconds wait.
			time contents: Time nowUTC print24 
		]
	] fork.
]

{ #category : 'layout' }
ClockPresenter >> defaultLayout [

	^ SpBoxLayout newHorizontal
		add: (self newMorph
			morph: time;
			yourself
		);
		hAlignCenter;
		vAlignCenter;
		yourself
]

{ #category : 'initialization' }
ClockPresenter >> initializePresenters [

	time := (TextMorph new)
		contents: '00:00';
		font: (LogicalFont familyName: 'Source Sans Pro' pointSize: 20);
		yourself

]

{ #category : 'layout' }
ClockPresenter >> initializeWindow: aWindow [

	active := true.

	aWindow title: 'Clock'.
	aWindow initialExtent: 180 @ 80.
	
	aWindow whenWillCloseDo: [ active := false ].
]
