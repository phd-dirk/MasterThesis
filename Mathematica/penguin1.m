<< Tracer.m;

VectorDimension[4-2ep];

Ex = (1/2/(1-ep) {al}.{be} p.p + p.{al} p.{be}) G[l1,{mu},{be},{la},{al},{mu}] G[l2,{om}] ({la}.{om} - (1-a) p.{la} p.{om}/p.p) // Expand;
Ex2 = Ex /. om -> la // Simplify;
