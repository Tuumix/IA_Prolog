%pilotos
piloto(lamb).
piloto(besenyei).
piloto(chambliss).
piloto(maclean).
piloto(mangold).
piloto(jones).
piloto(bonhomme).

%equipes
equipe(breitling,lamb).
equipe(redbull ,chambli).
equipe(mediterranean ,maclean).
equipe(cobra ,mangold).
equipe(matador ,bonhomme).
equipe(matador ,jones).


%aviao
aviao(lamb, mx2).
aviao(besenyei, edge540).
aviao(chambliss, edge540).
aviao(mclean, edge540).
aviao(mangold, edge540).
aviao(jones, edge540).
aviao(bonhomme, edge540).

%circuitos
cirtcuito(istanbul).
cirtcuito(budapest).
cirtcuito(porto).

%venceu
venceu(jones,porto).
venceu(mangold,budapest).
venceu(mangold,istanbul).

%gates
gates(istanbul,9).
gates(budapest,6).
gates(porto,5).

%consulta
ganha(Piloto):- venceu(Piloto,_), write(Piloto).
equipe_venceu(Ciruito):- venceu(X,Circuito),equipe(Y,X), write(Y).
