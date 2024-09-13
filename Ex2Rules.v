Theorem merge_h:
  forall a b c:Prop,
  (a -> b -> c) <-> (a /\ b -> c).
Proof.
  Admitted.

Axiom or_true:
  forall a: Prop,
  (True \/ a) <-> True.

Axiom or_false:
  forall b: Prop,
  (False \/ b) <-> b.

Axiom and_true:
  forall a: Prop,
  (a /\ True) <-> a.

Axiom and_true_2:
  forall a: Prop,
  (True /\ a) <-> a.

Axiom and_false:
  forall a: Prop,
  (False /\ a) <-> False.

Axiom not_true:
  ~ True <-> False.

Lemma dp:
  forall l la lb: Prop,
  (l \/ la) /\ (~l \/ lb) <-> la /\ lb.
Proof.
  Admitted.

Lemma dp_1:
  forall l lb: Prop,
  l /\ (~l \/ lb) <-> lb.
Proof.
  Admitted.

Lemma dp_2:
  forall l la: Prop,
  (l \/ la) /\ (~l) <-> la.
Proof.
  Admitted.
