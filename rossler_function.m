function kdot = rossler_function( t, k )
a = 0.1;
b = 0.1;
c = 18.0;

kdot = [ (-1*(k(2))-k(3)); k(1)+(a*k(2)); b+k(3)*(k(1)-c)];