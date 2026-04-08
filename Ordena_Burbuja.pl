
 /*

	ordenación burbuja:
	
	ordena_burbuja( +ListaI , -ListaR )
	
	Es cierto cuando ListaR es identica a ListaI pero con todos sus elementos ordenados.
	
	Principio de inducción:
	
	1) 	ordena_burbuja( ListaI , ListaI ) :- ordenada( ListaI ).
	2)	ordena_burbuja( ListaI , ListaR ) :- append( Lista1 , [ E1 , E2 | Lista2 ] , ListaI ) , ordenada( [ E1 , E2 ] ) , ordena_burbuja( ListaI , ListaR ).
	3)	ordena_burbuja( ListaI , ListaR ) :- append( Lista1 , [ E1 , E2 | Lista2 ] , ListaI ) , E1 > E2 , append( Lista1 , [ E2 , E1 | Lista2 ] , Lista ), ordena_burbuja( Lista , ListaR ).

*/
	ordena_burbuja( ListaI , ListaI ) :- ordenada( ListaI ).
	ordena_burbuja( ListaI , ListaR ) :- append( Lista1 , [ E1 , E2 | Lista2 ] , ListaI ) , ordenada( [ E1 , E2 ] ) , ordena_burbuja( ListaI , ListaR ).
	ordena_burbuja( ListaI , ListaR ) :- append( Lista1 , [ E1 , E2 | Lista2 ] , ListaI ) , E1 > E2 , append( Lista1 , [ E2 , E1 | Lista2 ] , Lista ), ordena_burbuja( Lista , ListaR ).

/*

	ordenada:
	
	ordenada( Lista )

	Es cierto si Lista está ordenada.
	
	1) ordenada( [] ).
	2) ordenada( [ _ ] ).
	3) ordenada( [ Cabeza1 , Cabeza2 | Resto ] ) :- ordenada( [ Cabeza2 | Resto ] ) , Cabeza1 =< Cabeza2.

*/

	ordenada( [] ).
	ordenada( [ _ ] ).
	ordenada( [ Cabeza1 , Cabeza2 | Resto ] ) :- ordenada( [ Cabeza2 | Resto ] ) , Cabeza1 =< Cabeza2.