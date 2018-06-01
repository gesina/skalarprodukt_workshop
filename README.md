# Material zum Schüler-Workshop „Vom Skalarprodukt zur Bildbearbeitung”
Dies sind die Quellen zu einem einstündigen Mathematikworkshop mit
Schülern der Jahrgangsstufen ca. 7–9 (Gymnasium).

Der Vortrag ist entstanden für den 
[Schülerzirkel Mathematik](http://www-app.uni-regensburg.de/Fakultaeten/MAT/schuelerzirkel/pmwiki/pmwiki.php)
der Fakultät für Mathematik der Universität Regensburg.

## Workshopablauf
Getestete Voraussetzungen: 
- beliebiger PDF-Viewer
- [GIMP](https://www.gimp.org/) Version 2.10.2

Die Aufteilung ist
1. Vortrag (s. `skalarprodukt.md` und `skalarprodukt-loesungen.pdf`):
   Crashkurs zu Vektoren, Vektorrechnung und Skalarprodukt
2. Präsentation (s. `skalarprodukt_beamer.pdf`):
   Bildbeispiele zur Faltung in der Bildverarbeitung als Beispielanwendung
3. Theoretische Aufgaben (s. `skalarprodukt_aufgaben-loesungen.pdf`):
   Aufwärmaufgaben zur Vektorrechnung/Skalarprodukt
   (Bonusaufgaben optional)
4. Praktischer Teil in Kleingruppen unter Anleitung
   (s. `skalarprodukt_aufgaben-loesungen.pdf` und Hinweise zu Gimp in
   `skalarprodukt-loesungen.pdf`):
   Kleinere Spielereiaufgaben zu Bildfaltungen mit Gimp
   (Bonusaufgaben optional)

## Kompilieren
Getestete Voraussetzungen:
- [TeXlive](http://tug.org/texlive/) 2018 Distribution
- [Inkscape](https://inkscape.org/) 0.92.2
- [GNU Make](https://www.gnu.org/software/make/) 4.2.1
Zum Kompilieren `make` aufrufen.

## Dateien
- Quelldateien für den Inhalt:
	- `skalarprodukt_beamer.tex` bzw. -`.pdf`: 
		Hauptdatei und Inhalt bzw. PDF der Präsentation
	- `skalarprodukt.tex`: Vortragsinhalt
	- `skalarprodukt_aufgaben.tex`: Aufgaben
	  Für die Vortrags- und die Aufgabenquellen gibt es jeweils zwei
	  kompilierbare Hauptdateien bzw. zugehörige `.pdf`-Dateien:
	  - `-handout`: Handout für die Schüler ohne Lösungen
	  - `-loesungen`: Spicker mit gegrauten Lösungen für die Helfer
- `bilder/*`: Bildquelldateien und SVG-Quellen zur Erzeugung von .png-Dateien
- `skalarprodukt_def.tex`: Definitionen, Paketeinbindungen
- `skalarprodukt.md`: ursprüngliche Skizzen; hier findet sich die
  Textversion des Vortrags mit Erklärungen

## Bildquellen
Die Bilder sind alle selbst generiert oder aus einer der folgenden
Quellen (Wikimedia Commons) entstanden:
- [`Regensburger_Dom.png`](https://commons.wikimedia.org/wiki/File:Regensburger_Dom_4.jpg)
- [`Verkehrsschild.png`](https://commons.wikimedia.org/wiki/File:20120529Schild_Hockenheim1.jpg)
- [`Uni_Regensburg.png`](https://commons.wikimedia.org/wiki/File:Universit%C3%A4t_Regensburg_Forum.jpg)
