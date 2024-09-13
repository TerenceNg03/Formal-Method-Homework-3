Lemma dp:
  forall l la lb: Prop,
  (l \/ la) /\ (~l \/ lb) <-> la /\ lb.
Proof.
  Admitted.

Theorem Exercise_2:
  exists a b c x1 x2 x3 x4 : Prop,
  (~ x4 \/ ~ x1 \/ x3) /\
  (x1 \/ x4) /\
  (~ x3 \/ x4) /\
  (~ x3 \/ a) /\
  (~ x3 \/ x2) /\
  (~ a \/ ~ x2 \/ x3) /\
  (~ x2 \/ ~ c) /\
  (c \/ x2) /\ (~ x1 \/ a \/ b) /\ (~ a \/ x1) /\ (~ b \/ x1) /\ x4.
Proof.
  split.