import Mathlib.Probability.IdentDistrib
import Mathlib.MeasureTheory.Integral.DominatedConvergence

open MeasureTheory Filter Finset Asymptotics

open scoped ProbabilityTheory

scoped[ProbabilityTheory] notation "ℙ₁" => MeasureTheory.MeasureSpace.volume
scoped[ProbabilityTheory] notation "ℙ₂" => MeasureTheory.MeasureSpace.volume

variable {Ω₁ : Type*} [MeasureSpace Ω₁] [IsProbabilityMeasure (ℙ₁ : Measure Ω₁)]

variable {Ω₂ : Type*} [MeasureSpace Ω₂] [IsProbabilityMeasure (ℙ₂ : Measure Ω₂)]

def E := ℝ

variable (n: ℕ) (m: ℕ)

variable (X : Fin n → Ω₁ → E) (Z : Fin m → Ω₂ → E)




-- a probability space is a measurable space whose measure is a probability measure
-- probability space is usually a triple (R (\sigma), borel algebra B \subseteq Power(\sigma = R), lebesgue measure P: B -> R)
-- a rv is a measurable function X: \sigma -> (E, A_E), where (E, A_E) is any measurable space (usually E = R with borel algebra as the underlying sigma algebra)
-- intuition: use rv X to push measure P on \sigma to measure p_X on E, and p_X is usually the lebesgue measure on R (if Im(X) is absolutely continuous) or counting measure (if Im(X) is countable)
-- a probability distribution is simply the pushforward measure induced by the rv
-- a pmf/pdf is simply the radon nikodym derivative of the probability measure wrt the lebesgue or counting measure
