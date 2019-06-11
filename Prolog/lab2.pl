parent_of(saman,ajith).   %saman is parent of Ajith
parent_of(saman,teesha).
parent_of(ajith,monika).
parent_of(ajith,gihan).
parent_of(madu,teesha).
parent_of(madu,ajith).
parent_of(chathuri,pasan).
female(teesha).  %Teesha is female
female(monika).
female(madu).
female(chathuri).
male(saman).   %saman is male
male(ajith).
male(gihan).
male(pasan).
mother(X,Y):-parent_of(X,Y),female(X).   %X is mother of Y
grandparent(X,Z):-parent_of(X,Y),parent_of(Y,Z). %X is grand parent of Z
sister(X,Y):-parent_of(Z,Y),parent_of(Z,X),female(X),not(X=Y).  %X is a sister of Y
happy(X):-parent_of(X,_).  %parent who has child
hasTwoChildren(X):-parent_of(X,Y),sister(Y,_). %parent who has two child and one of them is female
grandchild(X,Y):-parent_of(Y,Z),parent_of(Z,X).  %X is grand parent of Y
aunt(X,Y):-parent_of(Z,Y),sister(X,Z). %X is aunt of Y
