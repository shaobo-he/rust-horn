(set-logic HORN)

(declare-datatypes ((~Mut<Int> 0)) ((par () ((~mut<Int> (~cur<Int> Int) (~ret<Int> Int))))))

(declare-fun %linger_dec_bound_three (Int ~Mut<Int> ~Mut<Int> ~Mut<Int>) Bool)
(declare-fun %linger_dec_bound_three.0 (Int ~Mut<Int> ~Mut<Int> ~Mut<Int> Bool) Bool)
(declare-fun %linger_dec_bound_three.4 (Int ~Mut<Int> ~Mut<Int> ~Mut<Int> Int ~Mut<Int> ~Mut<Int> ~Mut<Int> Bool) Bool)
(declare-fun %linger_dec_bound_three.7 (Int ~Mut<Int> ~Mut<Int> ~Mut<Int> Int ~Mut<Int> ~Mut<Int> ~Mut<Int> Bool Bool) Bool)
(declare-fun %linger_dec_bound_three.10 (Int ~Mut<Int> ~Mut<Int> ~Mut<Int> Int ~Mut<Int> ~Mut<Int> ~Mut<Int> Bool Bool Bool) Bool)
(declare-fun %main (Bool) Bool)
(declare-fun %main.5 (Int Int Int Int Int Bool Bool) Bool)
(declare-fun %main.8 (Int Int Int Int Int Bool Bool Bool) Bool)
(declare-fun %main.9 (Int Int Int Int Int Bool Bool) Bool)

; %linger_dec_bound_three
(assert (forall ((_1 Int) (_2 ~Mut<Int>) (_3 ~Mut<Int>) (_4 ~Mut<Int>)) (=>
  (and (%linger_dec_bound_three.0 _1 _2 _3 _4 (= _1 0)))
  (%linger_dec_bound_three _1 _2 _3 _4))))
; %linger_dec_bound_three bb0
(assert (forall ((_1 Int) (_2 ~Mut<Int>) (_3 ~Mut<Int>) (_4 ~Mut<Int>) (_?.1 Int) (_?.3 Bool) (_%.0 ~Mut<Int>) (_%.1 ~Mut<Int>) (_%.2 ~Mut<Int>)) (=>
  (and (%linger_dec_bound_three.4 _1 _%.0 _%.1 _%.2 _?.1 (~mut<Int> (- (~cur<Int> _2) 1) (~ret<Int> _2)) (~mut<Int> (- (~cur<Int> _3) 2) (~ret<Int> _3)) (~mut<Int> (- (~cur<Int> _4) 3) (~ret<Int> _4)) _?.3))
  (%linger_dec_bound_three.0 _1 _2 _3 _4 false))))
(assert (forall ((_1 Int) (_2 ~Mut<Int>) (_3 ~Mut<Int>) (_4 ~Mut<Int>)) (=>
  (and (= (~ret<Int> _2) (~cur<Int> _2)) (= (~ret<Int> _3) (~cur<Int> _3)) (= (~ret<Int> _4) (~cur<Int> _4)) true)
  (%linger_dec_bound_three.0 _1 _2 _3 _4 true))))
; %linger_dec_bound_three bb4
(assert (forall ((_1 Int) (_2 ~Mut<Int>) (_3 ~Mut<Int>) (_4 ~Mut<Int>) (_7 Int) (_8 ~Mut<Int>) (_9 ~Mut<Int>) (_10 ~Mut<Int>) (_?.5 Bool)) (=>
  (and (%linger_dec_bound_three.7 _1 _2 _3 _4 _7 _8 _9 _10 false _?.5))
  (%linger_dec_bound_three.4 _1 _2 _3 _4 _7 _8 _9 _10 false))))
(assert (forall ((_1 Int) (_2 ~Mut<Int>) (_3 ~Mut<Int>) (_4 ~Mut<Int>) (_7 Int) (_8 ~Mut<Int>) (_9 ~Mut<Int>) (_10 ~Mut<Int>) (_*.6_2 Int) (_*.6_3 Int) (_*.15_8 Int) (_*.15_10 Int) (_*.15_12 Int)) (=>
  (and (= (~ret<Int> _8) (~cur<Int> _8)) (= _*.6_2 _*.6_3) (%linger_dec_bound_three (- _1 1) (~mut<Int> _7 _*.15_8) (~mut<Int> (~cur<Int> _9) _*.15_10) (~mut<Int> (~cur<Int> _10) _*.15_12)) (= (~ret<Int> _10) _*.15_12) (= (~ret<Int> _9) _*.15_10) (= _*.6_3 _*.15_8) (= (~ret<Int> _4) (~cur<Int> _4)) (= (~ret<Int> _2) (~cur<Int> _2)) (= (~ret<Int> _3) (~cur<Int> _3)) true)
  (%linger_dec_bound_three.4 _1 _2 _3 _4 _7 _8 _9 _10 true))))
; %linger_dec_bound_three bb7
(assert (forall ((_1 Int) (_2 ~Mut<Int>) (_3 ~Mut<Int>) (_4 ~Mut<Int>) (_7 Int) (_8 ~Mut<Int>) (_9 ~Mut<Int>) (_10 ~Mut<Int>) (_11 Bool) (_?.8 Bool)) (=>
  (and (%linger_dec_bound_three.10 _1 _2 _3 _4 _7 _8 _9 _10 _11 false _?.8))
  (%linger_dec_bound_three.7 _1 _2 _3 _4 _7 _8 _9 _10 _11 false))))
(assert (forall ((_1 Int) (_2 ~Mut<Int>) (_3 ~Mut<Int>) (_4 ~Mut<Int>) (_7 Int) (_8 ~Mut<Int>) (_9 ~Mut<Int>) (_10 ~Mut<Int>) (_11 Bool) (_*.9_2 Int) (_*.9_3 Int) (_*.15_8 Int) (_*.15_10 Int) (_*.15_12 Int)) (=>
  (and (= (~ret<Int> _9) (~cur<Int> _9)) (= _*.9_2 _*.9_3) (%linger_dec_bound_three (- _1 1) (~mut<Int> (~cur<Int> _8) _*.15_8) (~mut<Int> _7 _*.15_10) (~mut<Int> (~cur<Int> _10) _*.15_12)) (= (~ret<Int> _10) _*.15_12) (= _*.9_3 _*.15_10) (= (~ret<Int> _8) _*.15_8) (= (~ret<Int> _4) (~cur<Int> _4)) (= (~ret<Int> _3) (~cur<Int> _3)) (= (~ret<Int> _2) (~cur<Int> _2)) true)
  (%linger_dec_bound_three.7 _1 _2 _3 _4 _7 _8 _9 _10 _11 true))))
; %linger_dec_bound_three bb10
(assert (forall ((_1 Int) (_2 ~Mut<Int>) (_3 ~Mut<Int>) (_4 ~Mut<Int>) (_7 Int) (_8 ~Mut<Int>) (_9 ~Mut<Int>) (_10 ~Mut<Int>) (_11 Bool) (_14 Bool) (_*.15_8 Int) (_*.15_10 Int) (_*.15_12 Int)) (=>
  (and (%linger_dec_bound_three (- _1 1) (~mut<Int> (~cur<Int> _8) _*.15_8) (~mut<Int> (~cur<Int> _9) _*.15_10) (~mut<Int> (~cur<Int> _10) _*.15_12)) (= (~ret<Int> _10) _*.15_12) (= (~ret<Int> _9) _*.15_10) (= (~ret<Int> _8) _*.15_8) (= (~ret<Int> _4) (~cur<Int> _4)) (= (~ret<Int> _3) (~cur<Int> _3)) (= (~ret<Int> _2) (~cur<Int> _2)) true)
  (%linger_dec_bound_three.10 _1 _2 _3 _4 _7 _8 _9 _10 _11 _14 false))))
(assert (forall ((_1 Int) (_2 ~Mut<Int>) (_3 ~Mut<Int>) (_4 ~Mut<Int>) (_7 Int) (_8 ~Mut<Int>) (_9 ~Mut<Int>) (_10 ~Mut<Int>) (_11 Bool) (_14 Bool) (_*.12_2 Int) (_*.12_3 Int) (_*.15_8 Int) (_*.15_10 Int) (_*.15_12 Int)) (=>
  (and (= (~ret<Int> _10) (~cur<Int> _10)) (= _*.12_2 _*.12_3) (%linger_dec_bound_three (- _1 1) (~mut<Int> (~cur<Int> _8) _*.15_8) (~mut<Int> (~cur<Int> _9) _*.15_10) (~mut<Int> _7 _*.15_12)) (= _*.12_3 _*.15_12) (= (~ret<Int> _9) _*.15_10) (= (~ret<Int> _8) _*.15_8) (= (~ret<Int> _4) (~cur<Int> _4)) (= (~ret<Int> _3) (~cur<Int> _3)) (= (~ret<Int> _2) (~cur<Int> _2)) true)
  (%linger_dec_bound_three.10 _1 _2 _3 _4 _7 _8 _9 _10 _11 _14 true))))

; %main
(assert (forall ((_! Bool) (_?.0 Int) (_?.1 Int) (_?.2 Int) (_?.3 Int) (_*.4_7 Int) (_*.4_8 Int) (_*.4_11 Int) (_*.4_12 Int) (_*.4_15 Int) (_*.4_16 Int)) (=>
  (and (%linger_dec_bound_three _?.0 (~mut<Int> _?.1 _*.4_8) (~mut<Int> _?.2 _*.4_12) (~mut<Int> _?.3 _*.4_16)) (= _*.4_15 _*.4_16) (= _*.4_11 _*.4_12) (= _*.4_7 _*.4_8) (%main.5 _?.0 _*.4_7 _*.4_11 _*.4_15 _?.1 (>= _?.1 _*.4_7) _!))
  (%main _!))))
; %main bb5
(assert (forall ((_1 Int) (_2 Int) (_3 Int) (_4 Int) (_5 Int) (_! Bool)) (=>
  (and (%main.9 _1 _2 _3 _4 _5 (not false) _!))
  (%main.5 _1 _2 _3 _4 _5 false _!))))
(assert (forall ((_1 Int) (_2 Int) (_3 Int) (_4 Int) (_5 Int) (_! Bool)) (=>
  (and (%main.8 _1 _2 _3 _4 _5 true (< (- _5 _2) (* 3 _1)) _!))
  (%main.5 _1 _2 _3 _4 _5 true _!))))
; %main bb8
(assert (forall ((_1 Int) (_2 Int) (_3 Int) (_4 Int) (_5 Int) (_16 Bool) (_! Bool)) (=>
  (and (%main.9 _1 _2 _3 _4 _5 (not false) _!))
  (%main.8 _1 _2 _3 _4 _5 _16 false _!))))
(assert (forall ((_1 Int) (_2 Int) (_3 Int) (_4 Int) (_5 Int) (_16 Bool) (_! Bool)) (=>
  (and (%main.9 _1 _2 _3 _4 _5 (not true) _!))
  (%main.8 _1 _2 _3 _4 _5 _16 true _!))))
; %main bb9
(assert (forall ((_1 Int) (_2 Int) (_3 Int) (_4 Int) (_5 Int) (_! Bool)) (=>
  (and (= _! false))
  (%main.9 _1 _2 _3 _4 _5 false _!))))
(assert (forall ((_1 Int) (_2 Int) (_3 Int) (_4 Int) (_5 Int) (_! Bool)) (=>
  (and (= _! true))
  (%main.9 _1 _2 _3 _4 _5 true _!))))

(assert (forall ((_% Int)) (=> (%main true) false)))
(check-sat)
