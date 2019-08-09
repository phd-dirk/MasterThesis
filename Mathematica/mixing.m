Ex = Q2 == ( 2 Q1 + 2 Q3 + 2 Q4 - (1-1/Nc)(Q5 + Q6) - Q7 - Q8 -(1-1/Nc)(Q9 + Q10)/2  )/(1 - 1/Nc); 

Ex2 = Solve[Ex, Q5]; 
Ex3 = - Q5 3/(4 Nc) (Nc^2 - 1)/(2 Nc) /. Ex2[[1]] // Expand // Simplify;

