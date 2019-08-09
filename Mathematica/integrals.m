f[a_, b_, p_] = ( I )/( 4 Pi^2 ) ( (-p^2 u^2)/(4 Pi) )^ep ( 1 )/( p^(2(a+b-2)) ) ( Gamma[2-a-ep] Gamma[2-b+ep] )/( Gamma[a] Gamma[b] Gamma[4-a-b+2ep] ) Gamma[a + b - 2 - ep]

g[a_,b_,p_] = Series[f[a,b,p], {ep, 0, -1}]

Ex1 = - ( (4 Pi mu^2 )/(- p^2) )^ep Gamma[2-ep]^2/Gamma[4-2ep] Gamma[ep] 4 (1-ep);
Ex2 = Series[Ex1, {ep, 0, 0}];
Ex3 = Ex2/4 // Expand;

Eq1 = p.p I2[p] == 2 D A + 2 p.p B;
Eq2 = p.p I2[p] == p.p A + p.p.p.p B;
Sol = Solve[ {Eq1, Eq2}, {A,B} ];
A = Sol[[1,1]] // Expand;
B = Sol[[1,2]] // Expand;
