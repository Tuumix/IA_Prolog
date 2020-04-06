continente(asia).
continente(america).
continente(europa).

pais(portugal, europa, 10).
pais(espanha, europa, 48).
pais(franca, europa, 52).
pais(belgica, europa, 9).
pais(alemanha, europa, 82).
pais(holanda, europa, 15).
pais(eua, america, 235).
pais(brasil, america, 155).
pais(china, asia, 1100).
pais(mongolia, asia, 3).

fronteira(portugal, espanha).
fronteira(franca, espanha).
fronteira(franca,belgica).
fronteira(belgica, alemanha).
fronteira(belgica, holanda).
fronteira(alemanha, holanda).
fronteira(alemanha, franca).
fronteira(china, mongolia).

%1)Escreva o predicado paises_continente(Lista, Cont) que calcula a Lista de países existentes num dado continente.
paises_continente(Lista,Cont):- findall(X, pais(X,Cont,_),Lista).

%2)Escreva o predicado paises_grandes(Lista, Cont) que retorna a Lista de países com mais de 100 milhões de habitantes de um dado continente.
paises_grandes(Lista,Cont):- findall(X,(pais(X,Cont,Hab), Hab > 200),Lista).

%3)Escreva o predicado dois_mais_pop(P1, P2), que retorna quais os dois países com mais habitantes.
dois_mais_pop(P1,P2,Lista):- findall([Pais,Y],pais(Pais,_,Y),Lista1), sort(Lista1,Lista).