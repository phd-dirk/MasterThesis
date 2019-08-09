<< Tracer.m
VectorDimension[D];

L1 = {mu}.{nu};
L2 = p.{mu} p.{nu};

RHS = L1 A + L2 B;

Eq1L = p.p I2[p];
Eq1R = 2 L1 RHS // Expand;
Eq1 = Eq1L == Eq1R;

Eq2L = p.p.p.p I2[p];
Eq2R = 4 L2 RHS // Expand;
Eq2 = Eq2L == Eq2R;

Sol = Solve[{Eq1, Eq2}, {A,B}];

(*rules = {I2[_] -> 1/ep, I3[__] -> 0};
Ex1 = Sol[[1]] /. rules;
Ex2 = Ex1 /. d -> 4-2ep;

A = Series[ Ex2[[1,2]], {ep, 0, -1}  ];
B = Series[ Ex2[[2,2]], {ep, 0, -1}  ];
C = Series[ Ex2[[3,2]], {ep, 0, -1}  ];*)
