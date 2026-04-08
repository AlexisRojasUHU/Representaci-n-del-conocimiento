
 /*

	ordenación QuickSort:
	
	ordena_QuickSort( +ListaI , -ListaR )
	
	Es cierto cuando ListaR unifica ListaI pero con todos sus elementos ordenados.
	
	Principio de inducción:
	
	1) ordena_QuickSort( [] , [] ).
	2) ordena_QuickSort( [ Cabeza | Resto ] , ListaR ) :- divide( Cabeza , [ Cabeza | Resto ] , ListaMenor , ListaMayor ) , ordena_QuickSort( ListaMenor , ListaMenorR ) , ordena_QuickSort( ListaMayor , ListaMayorR ) , append( ListaMenorR , ListaMayorR , ListaR ) .
	
*/

	ordena_QuickSort( [] , [] ).
	ordena_QuickSort( [ Cabeza | Resto ] , ListaR ) :- divide( Cabeza , Resto , ListaMenor , ListaMayor ) , ordena_QuickSort( ListaMenor , ListaMenorR ) , ordena_QuickSort( ListaMayor , ListaMayorR ) , append( ListaMenorR , [ Cabeza | ListaMayorR ] , ListaR ) .

/*

	divide:
	
	divide( +Elem , +Lista , -ListaMenor , -ListaMayor )

	Es cierto si Lista unifica con ListaMenor y con ListaMayor ordenando los menores de Elem en listaMenor y los mayores de Elem en ListaMayor.
	
	1) divide( Elem , [] , [] , [] ).
	2) divide( Elem , [ Cabeza | Resto ] , [ Cabeza | ListaMenor ] , ListaMayor ) :- divide( Elem , Resto , ListaMenor , ListaMayor ) , Cabeza =< Elem .
	3) divide( Elem , [ Cabeza | Resto ] , ListaMenor , [ Cabeza | ListaMayor ] ) :- divide( Elem , Resto , ListaMenor , ListaMayor ) , Cabeza > Elem .

*/

	divide( _ , [] , [] , [] ).
	divide( Elem , [ Cabeza | Resto ] , [ Cabeza | ListaMenor ] , ListaMayor ) :- Cabeza =< Elem , divide( Elem , Resto , ListaMenor , ListaMayor ).
	divide( Elem , [ Cabeza | Resto ] , ListaMenor , [ Cabeza | ListaMayor ] ) :- Cabeza > Elem , divide( Elem , Resto , ListaMenor , ListaMayor ).