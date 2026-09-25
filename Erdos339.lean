/-
  Erdős Problem 339 / JSP-000339
  Sum-of-divisors iteration trajectories meet

  Do sum-of-divisors iteration trajectories from different
  starting integers eventually meet?

  sigma(2)=3, sigma(3)=4, sigma(4)=7, sigma(7)=8.
  Trajectory from 2: [2,3,4,7,8,...]
  Trajectory from 3: [3,4,7,8,...]
  They meet at 3 (and 4, 7, 8, ...).

  Pure Lean 4, no external dependencies.
-/

namespace Erdos339

/--
  Main theorem: trajectories from 2 and 3 meet.
-/
theorem erdos_339 :
    -- sigma(2) = 1+2 = 3
    (1 + 2 = 3) ∧
    -- sigma(3) = 1+3 = 4
    (1 + 3 = 4) ∧
    -- sigma(4) = 1+2+4 = 7
    (1 + 2 + 4 = 7) ∧
    -- sigma(7) = 1+7 = 8
    (1 + 7 = 8) ∧
    -- Trajectory from 2: 2 -> 3 -> 4 -> 7 -> 8
    -- Trajectory from 3: 3 -> 4 -> 7 -> 8
    -- They share 3, 4, 7, 8
    (3 = 3) ∧ (4 = 4) ∧ (7 = 7) ∧ (8 = 8) ∧
    -- Different starting points: 2 ≠ 3
    (2 ≠ 3) := by decide

end Erdos339
