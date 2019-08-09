<< Tracer.m

(* Lorentz structure *)

L1 = {mu}.{nu};
L2 = p.{mu} p.{nu} + s.{mu} s.{nu};
L3 = p.{mu} s.{nu} + p.{nu} s.{mu};

RHS = L1 A + L2 B + L3 C;

Eq1L = I2[p-s];
Eq1R = L1 RHS // Expand;

Eq2L = ((p.p^2 + s.s^2) I3[p,s] + 2(p.p + s.s + p.s)I2[p-s] - (s.s + p.s)I2[p] - (p.p + p.s)I2[s])/4;
Eq2R = L2 RHS // Expand;

Eq3L = (p.p s.s I3[p,s] + (p.p + s.s + s.p)I2[p-s] - p.p I2[p] - s.s I2[s])/2; 
Eq3R = L3 RHS;

Eq1 = Eq1L == Eq1R;
Eq2 = Eq2L == Eq2R;
Eq3 = Eq3L == Eq3R;

Sol = Solve[{Eq1, Eq2, Eq3}, {A, B, C}];

rules = {I2[_] -> 1/ep, I3[__] -> 0};
Ex1 = Sol[[1]] /. rules;
Ex2 = Ex1 /. d -> 4-2ep;
	
A = Series[ Ex2[[1,2]], {ep, 0, -1} ];
B = Series[ Ex2[[2,2]], {ep, 0, -1} ];
C = Series[ Ex2[[3,2]], {ep, 0, -1} ];
