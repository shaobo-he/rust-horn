(set-info :original "6-just-rec/just-rec-1-base-safe.bc")
(set-info :authors "SeaHorn v.0.1.0-rc3")
(declare-rel verifier.error (Bool Bool Bool ))
(declare-rel main@entry (Int ))
(declare-rel main@tailrecurse.i (Int ))
(declare-rel main@just_rec.exit.split ())
(declare-var main@%_5_0 Int )
(declare-var main@%_7_0 Int )
(declare-var main@%_8_0 Int )
(declare-var main@%_9_0 Bool )
(declare-var main@%_0_0 Int )
(declare-var main@%_2_0 Int )
(declare-var main@%_3_0 Int )
(declare-var main@%_4_0 Bool )
(declare-var @nd_0 Int )
(declare-var main@entry_0 Bool )
(declare-var main@.lr.ph.i_0 Bool )
(declare-var main@tailrecurse.i_0 Bool )
(declare-var main@just_rec.exit_0 Bool )
(declare-var main@just_rec.exit.split_0 Bool )
(declare-var main@tailrecurse.i_1 Bool )
(declare-var main@just_rec.exit.loopexit_0 Bool )
(rule (verifier.error false false false))
(rule (verifier.error false true true))
(rule (verifier.error true false true))
(rule (verifier.error true true true))
(rule (main@entry @nd_0))
(rule (=> (and (main@entry @nd_0)
         true
         (= main@%_0_0 @nd_0)
         (= main@%_2_0 @nd_0)
         (= main@%_4_0 (= main@%_3_0 0))
         (=> main@.lr.ph.i_0 (and main@.lr.ph.i_0 main@entry_0))
         (=> (and main@.lr.ph.i_0 main@entry_0) main@%_4_0)
         (=> main@tailrecurse.i_0 (and main@tailrecurse.i_0 main@.lr.ph.i_0))
         main@tailrecurse.i_0)
    (main@tailrecurse.i @nd_0)))
(rule (=> (and (main@entry @nd_0)
         true
         (= main@%_0_0 @nd_0)
         (= main@%_2_0 @nd_0)
         (= main@%_4_0 (= main@%_3_0 0))
         (=> main@just_rec.exit_0 (and main@just_rec.exit_0 main@entry_0))
         (=> (and main@just_rec.exit_0 main@entry_0) (not main@%_4_0))
         (=> main@just_rec.exit_0 false)
         (=> main@just_rec.exit.split_0
             (and main@just_rec.exit.split_0 main@just_rec.exit_0))
         main@just_rec.exit.split_0)
    main@just_rec.exit.split))
(rule (=> (and (main@tailrecurse.i @nd_0)
         true
         (= main@%_5_0 @nd_0)
         (= main@%_7_0 @nd_0)
         (= main@%_9_0 (= main@%_8_0 0))
         (=> main@tailrecurse.i_1
             (and main@tailrecurse.i_1 main@tailrecurse.i_0))
         main@tailrecurse.i_1
         (=> (and main@tailrecurse.i_1 main@tailrecurse.i_0) main@%_9_0))
    (main@tailrecurse.i @nd_0)))
(rule (=> (and (main@tailrecurse.i @nd_0)
         true
         (= main@%_5_0 @nd_0)
         (= main@%_7_0 @nd_0)
         (= main@%_9_0 (= main@%_8_0 0))
         (=> main@just_rec.exit.loopexit_0
             (and main@just_rec.exit.loopexit_0 main@tailrecurse.i_0))
         (=> (and main@just_rec.exit.loopexit_0 main@tailrecurse.i_0)
             (not main@%_9_0))
         (=> main@just_rec.exit_0
             (and main@just_rec.exit_0 main@just_rec.exit.loopexit_0))
         (=> main@just_rec.exit_0 false)
         (=> main@just_rec.exit.split_0
             (and main@just_rec.exit.split_0 main@just_rec.exit_0))
         main@just_rec.exit.split_0)
    main@just_rec.exit.split))
(query main@just_rec.exit.split)

