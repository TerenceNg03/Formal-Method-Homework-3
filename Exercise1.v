Require Setoid.
From LF Require Import Ex1Rules.

Theorem Exercise_1:
  forall a b c:Prop,
   (a \/ b) -> (a /\ ~c).
Proof.
  intros a b c.
  (* introduce variables for each subformula *)
  remember (a \/ b) as x1.
  remember (~c) as x2.
  remember (a /\ x2) as x3.
  remember (x1 -> x3) as x4.
  (* Convert = to <-> *)
  apply eq_iff in Heqx1.
  apply eq_iff in Heqx2.
  apply eq_iff in Heqx3.
  apply eq_iff in Heqx4.
  (* Now we have \phi = x4 and *)
  (* Substitutions:
    Heqx1 : x1 <-> a \/ b
    Heqx2 : x2 <-> ~ c
    Heqx3 : x3 <-> a /\ x2
    Heqx4 : x4 <-> (x1 -> x3) 
  *)
  (* Conjunct all substitutions to get T(\phi)*)
  revert Heqx1.
  apply add_h.
  intros.
  revert Heqx2.
  apply add_h.
  intros.
  revert Heqx3.
  apply add_h.
  intros.
  revert Heqx4.
  apply add_h.
  intros.
  (* Now we have
    (x4 <-> (x1 -> x3)) 
    /\ (x3 <-> a /\ x2) 
    /\ (x2 <-> ~ c) 
    /\ (x1 <-> a \/ b) 
    /\ x4 
  *)
  (* Expand <-> *)
  repeat rewrite expand_iff.
  (* Rewrite (a -> b) to (~a \/ b) *)
  repeat rewrite expand_imp.
  (* Use de morgan's law and ~~a <-> a to clean up *)
  repeat rewrite de_morgan.
  repeat rewrite de_morgan_2.
  repeat rewrite double_neg.
  (* Use the fact (a \/ b \/ c) <-> ((a \/ b) \/ c) *)
  repeat rewrite <- inj_ass.
  (* Use distributivity of /\ and \/ *)
  repeat rewrite distribute.
  repeat rewrite distribute_2.
  (* Remove parentheses with associativity *)
  repeat rewrite <- conj_ass.
  clear.
  Show.
Abort.