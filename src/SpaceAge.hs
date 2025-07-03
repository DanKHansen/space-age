module SpaceAge (Planet (..), ageOn) where

data Planet
  = Mercury
  | Venus
  | Earth
  | Mars
  | Jupiter
  | Saturn
  | Uranus
  | Neptune

ageOn :: Planet -> Float -> Float
ageOn planet seconds = case planet of
  Mercury -> ageOn Earth seconds / (7600543.82 / 31557600)
  Venus -> ageOn Earth seconds / (19414149.05 / 31557600)
  Earth -> seconds / 31557600
  Mars -> ageOn Earth seconds / (59354032.69 / 31557600)
  Jupiter -> ageOn Earth seconds / (374355659.12 / 31557600)
  Saturn -> ageOn Earth seconds / (929292362.88 / 31557600)
  Uranus -> ageOn Earth seconds / (2651370019.33 / 31557600)
  Neptune -> ageOn Earth seconds / (5200418560.03 / 31557600)
