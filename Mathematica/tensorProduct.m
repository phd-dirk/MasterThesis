<< Tracer.m

VectorDimension[4];
(* Dirac Structures *)
DSc = -G[l1, {la}, {ro}, {mu}] G[l2, {la}, {ro}, {mu}] / 16;
DSd = -G[l1, {mu}, {ro}, {la}] G[l2, {mu}, {ro}, {la}] / 16;
DSe = G[l1, {la}, {ro}, {mu}] G[l2, {mu}, {ro}, {la}] / 16;
DSf = G[l1, {mu}, {ro}, {la}] G[l2, {la}, {ro}, {mu}] / 16;

DSG5c = -G[l1, {la}, {ro}, {mu}, G5] G[l2, {la}, {ro}, {mu}, G5] / 16;
DSG5d = -G[l1, {mu}, G5, {ro}, {la}] G[l2, {mu}, G5, {ro}, {la}] / 16;
DSG5e = G[l1, {la}, {ro}, {mu}, G5] G[l2, {mu}, G5, {ro}, {la}] / 16;
DSG5f = G[l1, {mu}, G5, {ro}, {la}] G[l2, {la}, {ro}, {mu}, G5] / 16;

DSList = {DSc, DSd, DSe, DSf};
Ex1 = ToDiracBasis[DSList] // Expand;
Ex2 = Ex1 /. {la -> mu, ro -> mu, idx16 -> mu, idx19 -> mu};
result = Ex2 /. List -> Plus;
resultCD = Ex2[[1]] + Ex2[[2]];
resultEF = Ex2[[3]] + Ex2[[4]];
 
DSListG5 = {DSG5c, DSG5d, DSG5e, DSG5f};
Ex3 = ToDiracBasis[DSListG5] // Expand;
Ex4 = Ex3 /. {la->mu, ro->mu, idx40->mu, idx43->mu};
resultG5 = Ex4 /. List-> Plus;
