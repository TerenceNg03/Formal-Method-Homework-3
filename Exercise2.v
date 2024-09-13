Require Coq.Init.Logic.
Require Setoid.
From LF Require Import Ex2Rules.

Theorem Exercise_2:
  exists x4 a b c x1 x2 x3: Prop,
  (~ x4 \/ ~ x1 \/ x3) /\
  (x1 \/ x4) /\
  (~ x3 \/ x4) /\
  (~ x3 \/ a) /\
  (~ x3 \/ x2) /\
  (~ a \/ ~ x2 \/ x3) /\
  (~ x2 \/ ~ c) /\
  (c \/ x2) /\ (~ x1 \/ a \/ b) /\ (~ a \/ x1) /\ (~ b \/ x1) /\ x4.
Proof.
  exists True.
  (* x4 must be True *)
  (* Propogate x4 *)
  setoid_rewrite not_true.
  setoid_rewrite or_comm at 3 4.
  setoid_rewrite or_true.
  setoid_rewrite or_false.
  setoid_rewrite and_true.
  setoid_rewrite and_true_2.
  setoid_rewrite and_true_2.
  (* Use dp to resolve  *)
  setoid_rewrite and_comm at 7. setoid_rewrite and_assoc.
  setoid_rewrite or_comm at 9.
  (* Current State
    exists a b c x1 x2 x3 : Prop,
    (~ x1 \/ x3) /\
    (~ x3 \/ a) /\
    (~ x3 \/ x2) /\
    (~ a \/ ~ x2 \/ x3) /\
    (~ x2 \/ ~ c) /\
    (c \/ x2) /\ (~ a \/ x1) /\ (x1 \/ ~ b) /\ (~ x1 \/ a \/ b) 
  *)
  (* I would like to use dp to convert 
    (x1 \/ ~ b) /\ (~ x1 \/ a \/ b) 
    to
    (~b \/ a \/ ~b) 
    But I can not refer ro any variable
  *)
  setoid_rewrite (dp x1 (~b) _).
  
