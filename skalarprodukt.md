# Vortragsnotizen: Vom Skalarprodukt zur Bildbearbeitung

## Was ist ein Vektor?
Ein Vektor ist eine Möglichkeit, den Weg von einem Startpunkt zu einem
Zielpunkt in einem Koordinatensystem zu beschreiben.

### Was brauche ich für ein Koordinatensystem:
1. Wo ist mein Startpunkt? (0,0)
2. Wo sind meine Achsen, bzw. genauer:
   - Wo ist welche Grundrichtung (Fachbegriff: Basisvektor) meines
	 Koordinatensystems?
   - Welche Skala bzw. Schrittlänge hat sie? (1,0), (0,1)

Welche Zusammenstellung von Grundrichtungen mit Schrittlängen
(Fachbegriff: Basis) ist erlaubt?
   - Jeder Punkt muss mit abwechselnden Schritten in diese Richtungen
	 erreichbar sein (Fachbegriff: Erzeugendensystem).
   - Keiner der Richtungspunkte darf durch die anderen Richtungen
	 erreichbar sein (Fachbegriff: linear unabhängig).

### Bemerkung: Wann ist es ein kartesisches Koordinatensystem?
Wähle die Richtungen im rechten Winkel zueinander (und geometrisch in
bestimmter Reihenfolge). Wir werden nur kartesische Koordinatensysteme
betrachten.

### Was brauche ich für einen Vektor:
Ein Vektor beschreibt, wie ich von einem Startpunkt in meinem
Koordinatensystem – z.B. der Null – zu einem Zielpunkt gelange.
Ich kann meinen Vektor angeben, indem ich festhalte, wie viel ich in
welche Basisrichtung gehe, um mein Ziel zu erreichen.

Schreibweise: (Schritte in Richtung 1, Schritte in Richtung 2, ... )
- Die Reihenfolge, in der ich meine Schritte gehe, ist egal
  (ausprobieren)!
- Es sind auch Bruchteile von Schritten erlaubt, z.B. 1,5 Schritte in
  Richtung 1.

Bsp. (1,2)

### Mehr Dimensionen
Die Darstellung von oben (wähle die Null und Richtungen, dann sage nur
wie viel man in welche Richtung gehen muss) funktioniert auch für
andere Räume, z.B. den 3-dimensionalen Raum.

Bsp. 3D-Vektor: (1,2,1)
Bsp. 4D-Vektor: (1,2,1, 0,5)

### Vektoren statt Punkten
Die obige Darstellung ist ebenfalls üblich, um Punkte in einem
Koordinatensystem anzugeben, und offensichtlich erreichen wir einen
Punkt, indem wir bei der Null starten und den gleich dargestellten
Vektor entlanglaufen. Damit das funktioniert, haben wir für unser
Koordinatensystem eine Null – den Standardstartpunkt – ausgesucht.

Der Vorteil von Vektoren statt Punkten ist, dass wir eben auch von
anderen Punkten als der Null aus starten können und dadurch sehr
praktische Rechenoperationen möglich werden.


## Rechnen mit Vektoren
### Addition von Vektoren
Wir können Vektoren addieren: Laufe erst die Weganweisungen
vom 1. Vektor, dann die vom 2.

Bsp. (2,1) + (-1,1) = (1,2) = (-1,1) + (2,1)

Einfacher zu rechnen: Nachdem die Reihenfolge, in der wir die Schritte
laufen, egal ist, erhalten wir folgende einfache Rechenvorschrift:
```
(x_1, …, x_n) + (y_1, …, y_n) = (x_1+y_1, …, x_n+y_n)
```

### Vektoren Strecken/Stauchen
Ein Vektor selbst beschreibt wie unsere Basisvektoren eine
Richtung mit einer Schrittlänge, wobei ich, wenn ich vom Startpunkt
einen Schritt der Länge meines Vektors in diese Richtung mache, auf
meinem Vektorzielpunkt lande. 
Wie sieht dann der Vektor aus, auf dessen Zielpunkt ich lande, wenn
ich sage „Ich laufe 2 solche Schritte in diese Richtung“ (also „Ich
laufe 2x meinen Vektor”)?

Bsp. 2*(1,2) = (2,4)

Man sieht, es gilt folgende einfache Rechenvorschrift:
```
a * (x_1, …, x_n) = (a*x_1, …, a*x_n)
```
Dies gilt auch, wenn ich bloß Bruchteile des direkten Weges zu meinem
Zielpunkt gehen möchte:

Bsp. 0,5 * (2,4) = (1,2)

### Eine ganze Fläche aus 2 Vektoren
Wir haben am Anfang verlangt, dass ich zu jedem Vektor in meinem
Raum mit meinen Basisrichtungen laufen kann. Das können wir jetzt auch
so schreiben:
```
(x_1, …, x_n) = x_1*(1,0,…) + x_2*(0,1,0,…) + … + x_n*(0,…,0,1)
```

## Ganz andere Räume
Wir haben gesehen, dass ein Vektor als eine Folge festgelegter Länge
(Fachbegriff: Dimension) von Zahlen dargestellt werden kann. Vorher
hat ein Vektor z.B. einen Punkt auf einer Karte (bzw. dessen Lage
relativ zum Nullpunkt) dargestellt.

Wir können aber auch andere Daten als Folgen von Zahlen
schreiben. Damit wir sie auch durch Vektoren darstellen können,
müssen wir ein geeignetes Koordinatensystem finden – die Daten müssen
also alle durch Strecken/Stauchen und Addition von Basisrichtungen
dargestellt werden können.

### Farbpixel
Bsp. 3D-RGB-Farbvektor (=Farbpixel): 
- (0,0,0): Schwarz
- (1,0,0): Rot (R), maximaler Wert
- (0,1,0): Grün (G), maximaler Wert
- (0,0,1): Blau (B), maximaler Wert
Dann können wir z.B. folgende Farben durch additive Farbmischung schreiben:
- Weiß: `1*R + 1*G + 1*B` (alle Farben voll aufgedreht)
- Gelb: `1*R + 1*G`
- Dunkelgelb: `0,5*R + 0,5*G`

Achtung: Nicht jeder Farbvektor der so geschrieben wird, kann auch
real als Farbe dargestellt werden. Z.B. (-1) * R hat keine reale
Entsprechung, genauso kann eine Farbe nicht unbegrenzt roter werden.
Dem wird in einer Darstellund dadurch abgeholfen, dass negative
Farbwerte durch 0, und Farbwerte über 1 durch 1 ersetzt werden.

### Bilder
Bsp. Schwarz-weiß Bild:
Jedes Pixel, ist eine Basisrichtung.
Bei nur 5 Pixeln sieht (0, 0, 0,5, 0, 1, 0, 0, 0, 0,5)
bzw. 
(0,   0,5, 0
 0,5, 1,   0,
 0,   0,   0)

z.B. so aus:
 _____
|  -  |
|- +  |
|_____|

und 

 _____       _____       _____
|  -  |     |     |     |  -  |
|- -  |  +  |  -  |  =  |- +  |
|_____|     |____-|     |____-|


Bemerkung: Ein buntes bild ist dann beschrieben wie ein schwarz-weißes
Bild, nur dass wir einen Würfel mit Tiefe 3 statt einer Fläche haben
(für jedes Pixel brauchen wir jetzt 3 Zahlenwerte).

### Ton
Beschränken wir uns bei Tönen nur auf eine endliche Anzahl an
Frequenzen, so kann ein Ton dargestellt werden als
```
(Lautstärke von Frequenz 1, Lautstärke von Frequenz 2, ...)
```
Wir haben also ein Koordinatensystem mit den einzelnen Frequenzen als
Basisrichtungen und keinerlei Lautstärke als Nullpunkt. 


## Noch mehr Rechnen mit Vektoren: Das Skalarprodukt
Die Rechenvorschrift für das Skalarprodukt lautet:
```
(x_1, …, x_n) = x_1*y_1 + x_2*y_2 + … + x_n*y_n
```
Was bedeutet das Skalarprodukt anschaulich?

### Skalarprodukt als Verallgemeinerung von Längenmessung
Nach Satz des Pythagoras (Übung; unsere Basisrichtungen stehen im
rechten Winkel aufeinander!):
```
[Länge von (x_1, …, x_n)]^2 = x_1^2 + … + x_n^2 = (x_1, …, x_n) * (x_1, …, x_n)
```
Bsp. Wir wählen unsere Basisrichtungen so, dass sie Länge 1
haben:
(0,1) * (0,1) = 1 = (1,0) * (1,0)

Bsp. (4,3) * (4,3) = 16 + 9 = 25 = 5^2
Also hat (4,3) die Länge 5.

Bsp. (1,1)^2 = (1,-1)^2 = 1 + 1 = 2
Also haben (1,1) und (1,-1) die Länge sqrt(2).

### Skalarprodukt als Maß für „Wie sehr zeigen die beiden Vektoren in dieselbe Richtung?“

Bsp.
```
(1,2) * (1,0) = 1
(1,2) * (0,1) = 2
```
Und es gilt: `(1,2) = 1*(1,0) + 2*(0,1)`
(1,2) zeigt also mehr in die Richtung von (0,1) als in die Richtung
von (1,0).

Bsp. Betrachte die Vektoren mit Zielpunkt auf dem Kreis mit Radius 1
um den Nullpunkt und berechne, wie viel jeder von ihnen in (1,1)
steckt (also in Richtung von (1,1) weist):
- (1,0): mittel
- (1,1): am meisten
- (0,1): mittel
- (-1, 1): gar nichts
- (1,0): mittel, aber entgegengesetzt
- (1,1): am meisten, aber entgegengesetzt
- (0,1): mittel, aber entgegengesetzt
- (-1, 1): gar nichts, aber entgegengesetzt

Fazit: Das Skalarprodukt von einem Vektor x mit einem Vektor y
ist ein Maß dafür, wie viel von y in x steckt. Genauer:
- Hat y die Länge 1 und wähle ich ein Koordinatensytem mit y als
  einem Basisvektor, so steckt genau x * y von
  y in x.
- Für den Winkel phi zwischen x und y gilt ```x*y = cos(phi) * Länge(x) * Länge(y)```
  wobei `cos` die Funktion ist, die den wellenartigen Zusammenhang von
  oben beschreibt. Der Längenfaktor hier bedeutet, dass das
  Skalarprodukt von der ursprünglichen Helligkeit (bzw. Länge der
  Vektoren) abhängt: je heller, desto mehr.

## Anwendung für die Bildbe- und verarbeitung
Wir haben vorhin gesehen, dass digitale Bilder, die sich aus Pixeln
zusammensetzen, als Vektoren dargestellt werden können.
Jetzt können wir berechnen, wie sehr sich ein Bild/Bildausschnitt aus
anderen Bildern zusammensetzt:

Bsp. Wie sehr steckt in meinem 3x3-Pixel-Bild eine horizontale Kante?
Dieser Vektor bzw. Vergleichsbildausschnitt beschreibt eine
horizontale Kante:
```
1/9*( -2, -2, -2,
       4,  4,  4,
      -2, -2, -2 )

```

### Tipps: Einschränkungen von realen Bildern
Reale Bilder können in keinem der Bildkanäle (rot, grün, blau) eine
beliebige Helligkeit, und schon gar keine negative Helligkeit haben.
Um dennoch unsere Methoden darzustellen, werden negative Pixelwerte
schwarz dargestellt, und allzu große (d.h. helle) Pixelwerte weiß.

Was heißt das für unsere Vergleichsbildausschnitte?
Wenn wir bei einem Bild(ausschnitt) prüfen wollen, wie viel einer
Bildrichtung, also eines Vergleichsbildausschnitts (Fachbegriff:
Kernel), darin steckt, sollten wir bei der Wahl der Bildrichtung
folgendes beachten, damit das Resultat nicht viel zu dunkel/hell wird:
- Die Summe aller Kernelwerte sollte nicht viel größer als 1
  bzw. kleiner als 0 werden.
- Teile alle Kernelwerte durch die Anzahl der Kernelpixel (bei uns: 9)


### Vom Bild über den Kernel zum bearbeiteten Bild
Halten wir für jedes Pixel in unserem Bild fest, wie viel Kante in dem
3x3-Bildausschnitt um mein Pixel steckt, erhalten wir ein neues Bild,
in dem die Positionen von Kantenpixeln hell (großer Kantenwert) und
der Rest dunkler (kleiner Kantenwert) ist.

Weitere Beispiele von Kerneln (mit Bildern):
- scharfe horizontale Linie:
  ```
1/9*( -2, -2, -2,
       4,  4,  4,
      -2, -2, -2 )
```
- vertikale Kante dunkel zu hell:
```
1/9*(  0, 0,  0,
      -1, 1,  0,
       0, 0,  0 )
```
bzw. schärfer
```
1/9*( -1, 1,  0,
      -1, 1,  0,
      -1, 1,  0 )
```
- Relief:
```
    ( -2, -1,  0,
      -1,  1,  1,
       0,  1,  2 )
```
- Schärfen:
```
1/9*(  0, -1,  0,
      -1,  5, -1,
       0, -1,  0 )
```


## Gimp-Bedienung
Gimp (GNU Image Manipulation Program) ist ein freies
Bildbearbeitungsprogramm das für die gängigsten Betriebssysteme zur
Verfügung steht. Um eine Convolution auf ein Bild anzuwenden befolge:
1. Filters > Generic > Convolution Matrix...
2. Haken entfernen:
   - Normalize
   - Alpha Weighting
   - Alpha Channel
3. Haken setzen:
   - Preview
   - Split view
4. Divisor auf 9 setzen
   (bzw. 25 für Spielereien mit der gesamten Matrix)
5. Ausprobieren!
