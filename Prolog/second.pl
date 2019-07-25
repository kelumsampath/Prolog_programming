parent_of(saman,ajith).
parent_of(saman,teesha).
parent_of(ajith,monika).
parent_of(ajith,gihan).
parent_of(madu,teesha).
parent_of(madu,ajith).
parent_of(chathuri,pasan).
female(teesha).
female(monika).
female(madu).
female(chathuri).
male(saman).
male(gihan).
male(ajith).
male(pasan).

mother(X,Y):-parent_of(X,Y),female(X).
grandparent(X,Y):-parent_of(X,Z),parent_of(Z,Y).
sister(X,Y):-parent_of(Z,X),parent_of(Z,Y),female(X),not(X=Y).

happy(X):-parent_of(X,_).
hasTwoChild(X,Y):- parent_of(X,Y),sister(Y,_).
aunt(X,Y):-sister(X,Z),parent_of(Z,Y).

sun_of(keulm,jinadasa,menika).
daughter_of(inoka,jinadasa,menika).
sun_of(janith,darmasena,nalani).
daughter_of(nimali,darmasena,nalini).

father_of(X,Y):-sun_of(Y,X,_);daughter_of(Y,X,_).
mother_of(X,Y):-sun_of(Y,_,X);daughter_of(Y,_,X).

parent_of_new(X,Y):-father_of(X,Y);mother_of(X,Y).
sister_of(X,Y):-father_of(Z,X),daughter_of(Y,Z,_),not(X=Y).

bird(parrot).
bird(crow).
fish(whale).
hasFeet(elephant,4).
hasFeet(tiger,4).
hasFeet(crow,2).
hasBackbone(whale).
food(parrot,plant_food).
food(crow,plant_food).
food(crow,animal_food).
food(elephant,plant_food).
food(tiger,animal_food).
food(whale,plant_food).
food(whale,animal_food).
grow_by(whale,milk).
grow_by(elephant,milk).
largest(whale,sea).
largest(elephant,land).
quadrup(X):-hasFeet(X,Y),(Y=4).
mammal(X):-hasBackbone(X),grow_by(X,Y),(Y=milk).
endothermic(X):-mammal(X).
omnivorous(X):-food(X,plant_food),food(X,animal_food).




