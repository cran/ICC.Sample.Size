# ICC.Sample.Size 1.1

## Bug Fixes

* Fixed operator precedence error in `calculateAchievablep0()`. The denominator
  inside the square-root in the L0 formula was missing parentheses around `(2*k)`,
  causing the expression `/2*k` to be evaluated as `((N-1)/2)*k` instead of the
  correct `(N-1)/(2*k)`. This produced incorrect p0 values and understated the
  required detectable difference. Thanks to Leonardo Guizzetti, Randy Grout,
  Christopher Meaney, and Derek Chiu for independently reporting this issue.
