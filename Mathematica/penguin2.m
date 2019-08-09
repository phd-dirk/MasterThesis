<< Tracer.m;

VectorDimension[4-2ep];

Spur[l1]
Ex = (1/2/(1-ep) {al}.{be} p.p + p.{al} p.{be}) G[l1, {al},{la},{be},{mu}] (-{la}.{si} + (1-a) (p.{la} p.{si})/p.p) G[l2, {mu}] G[l3, {si}] // Expand;
Ex2 = Ex /. om -> la // Simplify;

