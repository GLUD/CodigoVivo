osc(100, 0.5, 0.5).color(0, 9, 1).rotate(1, -1.08).modulateRotate(o1, 0.2).out(o0)
osc(3).rotate(2, 0.8).modulateRotate(o0, () => (a.fft[0]*2)).out(o1)
