(* Check of RGE *)

sRule = {Cf -> (Nc^2 - 1)/2/Nc, b1 -> 1/6 (11 Nc  - 2 Nf)}

(* V-A, non-singlet *)

gamVmA = {{ - 3 Nc/2 + 3/Nc, - 3 Cf/2/Nc }, { - 3, 0 }};

C6VmA0 = 4Pi^2 as { 2, 0 };
C6VmA = 4Pi^2 as { 2 + (25/6  - (b1-3Nc/2+3/Nc) LL) as,  (* LL *)
                     - (11/18  -  2/3 LL) as };  (* ok *)

rgeVmARHS = Transpose[ as gamVmA ].C6VmA0 //Expand;
rgeVmALHS = - 2 D[ C6VmA, LL ] - b1 as^2 D[ C6VmA0, as ] //Expand;

rgeVmARHSsub = rgeVmARHS /. sRule // Expand;
rgeVmALHSsub = rgeVmARHS /. sRule // Expand;

rgeVmAEqual = rgeVmALHSsub == rgeVmARHSsub;


(* V+A, non-singlet *)

gamVpA = { { -3/Nc, 3Cf/2/Nc, -1/3/Nc, 0, 0, 0, 0, 0, 0 },
           { 3, 0, 2/3, 0, 0, 0, 0, 0, 0  },
           { 0, 0, -3Nc/4+Nf/3-1/3/Nc, 3Nc/4-3/Nc, 3Cf/2/Nc, 2/3, 0, 0, 0 },
           { 3/2+3/2/Nc, -3Cf/2/Nc, 3Nc/4+3/2-11/6/Nc, -3Nc/4+3/2+3/2/Nc,
             -3Cf/2/Nc, -3/4-3/4/Nc, -3/4-3/4/Nc, 3Cf/4/Nc, 3Cf/4/Nc },
           { 0, 0, 11/3, 0, 0, 0, 0, 0, 0  },
           { 0, 0, 0, 0, 0, -3Nc/4+Nf/3+1-1/3/Nc, 3Nc/4-3/Nc, 0, 3Cf/2/Nc  },
           { 0, 0, 0, 0, 0, 3Nc/4-10/3/Nc, -3Nc/4, 3Cf/2/Nc, 0  },
           { 0, 0, 0, 0, 0, 2/3, 3, 0, 0  },
           { 0, 0, 0, 0, 0, 11/3, 0, 0, 0  }  };

C6VpA0 = - 4Pi^2 as { 2, 0, 4/9, 0, 0, 0, 0, 0, 0 };
C6VpA = - 4Pi^2 as { 2   + (155/24  - (b1-3/Nc) LL) as,  (* 7/2 LL *)
                           ( 11/18  -  2/3 LL ) as,       (* ok *)
                     4/9 + ( 37/36  - (13Nc^2-22)/54/Nc LL ) as,  (* 95/162 LL *)
                           ( 35/108 -  5/18 LL ) as,      (* ok *)
                           ( 14/81  -  4/27 LL ) as,      (* ok *)
                         - (  2/81  +  4/27 LL ) as,      (* ok *)
                     0,
                     0,
                     0 };

OVpA = { qpo, qps, q3, q4, q6, q7, q8, q9, q10 };

rgeVpARHS = Transpose[ as gamVpA ].C6VpA0 //Expand;
rgeVpALHS = - 2 D[ C6VpA, LL ] - b1 as^2 D[ C6VpA0, as ] //Expand;

rgeVpARHSsub = rgeVpARHS /. sRule // Expand;
rgeVpALHSsub = rgeVpARHS /. sRule // Expand;

rgeVpAEqual = rgeVpALHSsub == rgeVpARHSsub;
