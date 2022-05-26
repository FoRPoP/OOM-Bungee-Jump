# OOM-Bungee-Jump

Svi kodovi za seminarski rad iz OOM-a, Bungee Jump.
Kodovi su pisani za MATLAB.

Pokrecu se fajlovi seminarski.m i semDif.m
Ostali fajlovi su pomocni i ova dva fajla ih koriste.

Fajlovi:

1. seminarski.m koristi fajlove movementFunc.m i massDepthFunction.m
   Racuna max dubinu u odnosu na masu i izbacuje grafik.
   Takodje racuna kretanje tela u odnosu na vreme, uz pomoc rucno unetih resenja diferencijalnih jednacina koja su prikazana u radu.
   
2. semDif.m koristi fajl diffEq
   Racuna kretanje tela u odnosu na vreme, uz pomoc ode45 numerickog resavaca i diferencijalne jednacine kojom smo opisali kretanje.
   Takodje crta grafik kretanja.
   
Oba nacina racunanja kretanja daju iste vrednosti i crtaju isti grafik.
