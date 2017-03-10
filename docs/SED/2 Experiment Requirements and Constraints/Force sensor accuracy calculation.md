### From the science team requirements:
2.2.1.2 Penetration depth
P.7: The penetration depth shall be measured with an accuracy of ± 0.5 mm or lower.

∆s = 0.0005 m

### Assumptions about the spring constant
s_exp = 0.05 m
F_exp = 5 N // no idea if this is appropriate

Assumption: only half of the spring movement is used for the experiment.
This means that at the end of the required move range, there is a force F_min > 0.

s_max = 2 * s_exp = 0.1 m

F_max = 2 * F_min
F_exp = (Fmax+Fmin)/2 = (F_max+F_max/2)/2 = 3/4*F_max
F_max = 4/3*F_exp = 4/3 * 5 N  = 6.67 N

k = F_max / s_max = 6.67 N / 0.1 m = 66.7 N/m

### Estimating the required force sensing accuracy

F = k * s
**∆F = k * ∆s = 66.7 N/m * 0.0005 m = 0,033 N**