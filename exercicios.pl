pertence(X,[X|_]).
pertence(X,[_|Y]):- pertence(X,Y), X > 2.

ultimo(X,[X]).
ultimo(X,[_|Y]):- ultimo(X,Y).

tamanho([],0).
tamanho([_|Y],Cont):- tamanho(Y,Tam), Cont is Tam + 1.

soma([],0).
soma([X|Y],Resul):- soma(Y,Sum), Resul is Sum + X.

maior([],0).
maior([X|Y],Maior):- maior(Y,X), X > Maior.

concatena([],B,B).
concatena([X|Y],B,[X|Z]):- concatena(Y,B,Z).