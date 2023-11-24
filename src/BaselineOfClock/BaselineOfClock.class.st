Class {
	#name : 'BaselineOfClock',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfClock',
	#package : 'BaselineOfClock'
}

{ #category : 'baselines' }
BaselineOfClock >> baseline: spec [

	<baseline>
	spec for: #'common' do: [
		spec postLoadDoIt: #openClock.
		spec package: 'Clock'
	]
	
]

{ #category : 'as yet unclassified' }
BaselineOfClock >> openClock [

	ClockPresenter new open
]
