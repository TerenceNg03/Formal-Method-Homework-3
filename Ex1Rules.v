Theorem de_morgan:
  forall a b:Prop,
  ~(a \/ b) <->  ~a /\ ~b.
Proof.
  Admitted.

Theorem de_morgan_2:
  forall a b:Prop,
  ~(a /\ b) <-> ~a \/ ~b.
Proof.
  Admitted.

Theorem double_neg:
  forall a: Prop,
  ~~a <-> a.
Proof.
  Admitted.

Theorem inj_ass:
  forall a b c:Prop,
  (a \/ b \/ c) <-> ((a \/ b) \/ c).
Proof.
  intros.
  unfold iff.
  split.
  - intros.
    destruct H.
    + left. left. assumption.
    + destruct H.
      * left. right. assumption.
      * right. assumption.
  - intros.
    destruct H.
    + destruct H.
      * left. assumption.
      * right. left. assumption.
    + right. right. assumption.
Qed.

Theorem distribute:
  forall a b c: Prop,
  (a /\ b \/ c) <-> (a \/ c) /\ (b \/ c).
Proof.
  unfold iff.
  split.
  - intros.
    repeat destruct H.
    split.
    + left. assumption.
    + left. assumption.
    + split.
      * right. assumption.
      * right. assumption. 
  - intros.
    destruct H.
    destruct H.
    destruct H0.
    + left. easy.
    + right. easy.
    + right. easy. 
Qed. 

Theorem distribute_2:
  forall a b c: Prop,
  (a \/ b /\ c) <-> (a \/ b) /\ (a \/ c).
Proof.
  unfold iff.
  split.
  - intros.
    destruct H.
    split.
    + left. assumption.
    + left. assumption
    + assumption.
    + split.
      * destruct H. right. assumption.
      * destruct H. right. assumption.
  - intros.
    destruct H.
    destruct H.
    + left. assumption.
    + destruct H0.
      * left. assumption.
      * right. split. easy. easy.
Qed.

Theorem conj_ass:
  forall a b c:Prop,
  (a /\ b /\ c) <-> ((a /\ b) /\ c).
Proof.
  intros.
  unfold iff.
  split.
  - revert a b c.
    intros a b c [Ha [Hb Hc]].
    easy.
  - intros.
    destruct H.
    easy.
Qed.

Theorem eq_iff:
  forall a b:Prop,
    (a = b) -> (a <-> b).
Proof.
  intros.
  rewrite H.
  easy.
Qed.
  
Theorem expand_iff:
  forall a b: Prop,
  (a <-> b) = ((a -> b) /\ (b -> a)).
Proof.
  intros.
  unfold iff.
  reflexivity.
Qed.

Theorem expand_imp:
  forall a b: Prop,
  (a -> b) <-> (~a \/ b).
Proof.
  Admitted.

Theorem add_h:
  forall a b:Prop,
  (a -> a /\ b) -> (a -> b).
Proof.
  intros.
  destruct H.
  - assumption.
  - assumption.
Qed.
