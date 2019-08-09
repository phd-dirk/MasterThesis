<< Tracer.m

(* Lorentz structures *)
S1 = {mu}.{nu};
S2 = p.{mu} p.{nu} + s.{mu} s.{nu};
S3 = p.{mu} s.{nu} + p.{nu} s.{mu};

Ex = S1 AA + S2 BB + S3 CC;

Eq1r = S1 Ex // Expand
Eq1l = I2[p-s];

Eq2r = S2 Ex // Expand;
Eq2l = ( ((p.p)^2 + (s.s)^2) I3[p,s] + 2 (p.p + s.s + p.s) I2[p-s] -
         (p.p + p.s) I2[s] - (s.s + p.s) I2[p] )/4

Eq3r = S3 Ex // Expand;
Eq3l = ( p.p s.s I3[p,s] + (p.p + s.s + p.s) I2[p-s] -
         p.p I2[p] - s.s I2[s] )/2;

Eq1 = Eq1l == Eq1r;  Eq2 = Eq2l == Eq2r;  Eq3 = Eq3l == Eq3r;

Sol = Solve[ { Eq1, Eq2, Eq3}, { AA, BB, CC}]


Exx = Ex ( S1 + aa S2 + bb S3 ) // Expand;

(* Projector on AA *)
PA = ( ((p.p)^2 + (s.s)^2 - 2(p.s)^2) S1 - (p.p + s.s) S2 +
     2 p.s S3 )/( 3 (p.p)^2 + 3 (s.s)^2 - 2 p.p s.s - 4 (p.s)^2 );


(* Integral rules up to factor i/(4pi)^2 *)
Irule = { I2[_] -> 1/ep,  I3[__] -> 0};
T
Ex2 = Ex1 /. d -> 4-2ep;

Aa = Series[ Ex2[[1,2]], {ep,0,-1}]
Bb = Series[ Ex2[[2,2]], {ep,0,-1}]
Cc = Series[ Ex2[[3,2]], {ep,0,-1}]


penguinEx1 = {alpha}.{beta}  {alpha}.{gamma} {beta}.{mu} // Expand;
penguinEx2 = {alpha}.{beta} {alpha}.{beta} {gamma}.{mu} // Expand;
penguinEx3 = {alpha}.{beta} {alpha}.{mu} {gamma}.{beta} // Expand;
penguinEx4 = penguinEx1 - penguinEx2 + penguinEx3;

penguinEx6 = ({alpha}.{beta} p.p + p.{alpha} p.{beta}) 4 ( {alpha}.{gamma} {beta}.{mu} - {alpha}.{beta} {gamma}.{mu} + {alpha}.{mu} {gamma}.{beta} ) // Expand;
