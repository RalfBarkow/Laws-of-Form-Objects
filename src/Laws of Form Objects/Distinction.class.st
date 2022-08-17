Class {
	#name : #Distinction,
	#superclass : #Object,
	#instVars : [
		'form',
		'cross',
		'name'
	],
	#category : #'Laws of Form Objects'
}

{ #category : #accessing }
Distinction class >> named: aName [ 
]

{ #category : #comparing }
Distinction >> = aDistinction [

	^ self name = aDistinction name
]

{ #category : #comparing }
Distinction >> hash [

	^ self name hash
]

{ #category : #accessing }
Distinction >> name [
	^ name
]
