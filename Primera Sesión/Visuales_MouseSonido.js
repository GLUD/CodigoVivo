a.show()
a.setScale (10)
a.setBins (6)

osc(40, 0.09,() => mouse.x * 0.001).rotate(1).pixelate(50,2).modulate(noise(()=> a.fft[1]*10 +0.01).scale(5,0.1)).out() 
