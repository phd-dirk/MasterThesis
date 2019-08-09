(* anticommutating g5 structure *)

O1ACRule = O1AC -> (1 - as 11/6) 6 OAo + as 25/4 OVo + as 10/3 OVs + as 1/18 Q3;
O2ACRule = O2AC -> (1 - as 11/6) 6 OVo + as 25/4 OAo + as 10/3 OAs + as 1/18 Q3;

(* eq. 18 and eq. 19 *)

C6VQ6og2 = 	-2/9 ( 1 + as (95/72 L + 107/48) ) Q3 -
		 1/3 (1 + as (9/8 L + 431/96 )) O1AC -
		 as/24 (16 L - 12) OVs -
		 as/24 (30 L - 45/2) OVo -
		 as/24 (16/9 L - 8/27) Q7 -
		 as/24 (16/9 L + 56/27) Q6 -
		 as/24 (10/3 L + 35/9) Q4;	

C6AQ6og2 = 	-2/9 ( 1 + as (95/72 L + 107/48) ) Q3 -
		 1/3 (1 + as (9/8 L + 431/96 )) O2AC -
		 as/24 (16 L - 12) OAs -
		 as/24 (30 L - 45/2) OAo -
		 as/24 (16/9 L - 8/27) Q7 -
		 as/24 (16/9 L + 56/27) Q6 -
		 as/24 (10/3 L + 35/9) Q4;	

C6VmAQ6og2 = C6VQ6og2 - C6AQ6og2;
C6VpAQ6og2 = C6VQ6og2 + C6AQ6og2;

c6VQ6og2 = C6VQ6og2 /. O1ACRule;
c6AQ6og2 = C6AQ6og2 /. O2ACRule;

c6VmAQ6og2 = (c6VQ6og2 - c6AQ6og2 // Expand) /. as^2 -> 0;
c6VpAQ6og2 = (c6VQ6og2 + c6AQ6og2 // Expand) /. as^2 -> 0;

		 
