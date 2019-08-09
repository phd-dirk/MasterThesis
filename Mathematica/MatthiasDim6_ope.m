(***  OPE at NLO for the dimension-6 contribution to      ***)
(***  vector and axialvector correlators according to     ***)
(***  Adam, Chetyrkin PLB 329 (1994) 129, hep-ph/9404331  ***)
(***                                                      ***)
(***  Last change:  Matthias,  7.8.2015                   ***)


(* Operator transformation to anti-commuting gamma_5 *)

O1ACrule = O1AC -> 6 (1-11/6 as) QAo + 25/4 as QVo + 10/3 as QVs + 1/18 as Q3;

O2ACrule = O2AC -> 6 (1-11/6 as) QVo + 25/4 as QAo + 10/3 as QAs + 1/18 as Q3;


(* Eq. (18) to (20) *)

C6VQ6og2 = - 1/3 ( 1 + (431/96 - 9/8 LL) as  ) O1AC -
             2/9 ( 1 + (107/48 - 95/72 LL) as  ) Q3 +
             as/24 (12 + 16 LL) QVs + as/24 (45/2 + 30 LL) QVo -
             as/24 (35/9 - 10/3 LL) Q4 - as/24 (56/27 - 16/9 LL) Q6 +
             as/24 (8/27 + 16/9 LL) Q7;

C6AQ6og2 = - 1/3 ( 1 + (431/96 - 9/8 LL) as  ) O2AC -
             2/9 ( 1 + (107/48 - 95/72 LL) as  ) Q3 +
             as/24 (12 + 16 LL) QAs + as/24 (45/2 + 30 LL) QAo -
             as/24 (35/9 - 10/3 LL) Q4 - as/24 (56/27 - 16/9 LL) Q6 +
             as/24 (8/27 + 16/9 LL) Q7;

C6VmAQ6og2 = C6VQ6og2 - C6AQ6og2;
C6VpAQ6og2 = C6VQ6og2 + C6AQ6og2;


c6VQ6og2 = C6VQ6og2 /. O1ACrule;
c6AQ6og2 = C6AQ6og2 /. O2ACrule;

c6VmAQ6og2 = (c6VQ6og2 - c6AQ6og2 // Expand) /. as^2 -> 0;
c6VpAQ6og2 = (c6VQ6og2 + c6AQ6og2 // Expand) /. as^2 -> 0;

c6VmAQ6 =   4 Pi^2 as ( ( 2 + (25/6 - LL) as  ) (QVo - QAo) -
                           (11/18 - 2/3 LL) as (QVs - QAs)  );
c6VpAQ6 = - 4 Pi^2 as ( ( 2 + (155/24 - 7/2 LL) as  ) (QVo + QAo) +
                           (11/18 - 2/3 LL) as (QVs + QAs) +
                        ( 4/9 + (37/36 - 95/162 LL) as  ) Q3 +
                           (35/108 - 5/18 LL) as Q4 +
                           (14/81 - 4/27 LL) as Q6 -
                           (2/81 + 4/27 LL) as Q7  );


(* VSA formulae *)

VSArule = { QVo -> - 4/9 uu dd,  (* Doesn't agree with (6.17) SVZ1 *)
            QAo ->   4/9 uu dd,
            QVs -> - 1/3 uu dd,
            QAs ->   1/3 uu dd,
            Q3  -> - 4/9 ( uu^2 + dd^2  ),
            Q4  ->   4/9 ( uu^2 + dd^2  ),
            Q5  -> - 1/3 ( uu^2 + dd^2  ),
            Q6  ->   1/3 ( uu^2 + dd^2  ),
            Q7  -> - 4/9 ( uu^2 + dd^2 + ss^2 ),
            Q8  ->   4/9 ( uu^2 + dd^2 + ss^2 ),
            Q9  -> - 1/3 ( uu^2 + dd^2 + ss^2 ),
            Q10 ->   1/3 ( uu^2 + dd^2 + ss^2 ) };

SU3rule = { uu -> qq,  dd -> qq,  ss -> qq };


c6VQ6VSA = 4 Pi^2 as ((c6VQ6og2 /. O1ACrule) /. VSArule) /. SU3rule // Expand;
c6AQ6VSA = 4 Pi^2 as ((c6AQ6og2 /. O2ACrule) /. VSArule) /. SU3rule // Expand;

c6VQ6VSA = c6VQ6VSA /. as^3 -> 0;  c6AQ6VSA = c6AQ6VSA /. as^3 -> 0;



