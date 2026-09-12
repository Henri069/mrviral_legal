# Mr. Viral — Rechtstexte

Die Website zur Mr. Viral-App: Startseite plus Rechtstexte. Kein Build, kein
Framework, nur HTML und CSS. Keine externen Schriften, keine Skripte, kein
Tracking — damit die Datenschutzerklärung ohne Zusatz stimmt.

Live: <https://mr-viral.de/> (GitHub Pages mit eigener Domain, siehe `CNAME`).
Die alte Adresse <https://henri069.github.io/mrviral_legal/> leitet dorthin weiter.

## Aufbau

```
index.html            Startseite (Deutsch)
privacy.html          Datenschutzerklärung
terms.html            Nutzungsbedingungen
delete-account.html   Konto und Daten löschen
imprint.html          Impressum
style.css             gemeinsames Styling für alle Seiten
home.css              nur für die Startseite
icon.png              App-Icon im Hero und als Share-Bild
favicon.png           Browser-Tab-Icon
CNAME                 eigene Domain für GitHub Pages
app-ads.txt           AdMob-Verifizierung
en/                   dieselben fünf Seiten auf Englisch
```

Deutsch ist die verbindliche Fassung, Englisch eine Übersetzung. Jede englische
Seite sagt das unten selbst.

## Ändern und veröffentlichen

Dieser Ordner ist ein eigenes Repository. Er liegt zwar im App-Projekt unter
`legal/`, gehört aber nicht dazu — das App-Repository ignoriert ihn.

```bash
cd legal
git add -A
git commit -m "Datenschutz aktualisiert"
git push
```

GitHub Pages baut die Seite danach innerhalb von ein bis zwei Minuten neu.

Beim Ändern eines Textes bitte das Datum oben auf der Seite mitziehen, in der
deutschen *und* der englischen Fassung.

## Verlinkt aus der App

Die Paywall verlinkt auf `terms.html` und `privacy.html`, das Profil auf
`delete-account.html`. Diese drei Links müssen erreichbar bleiben, sonst lehnt
Apple das Review ab. Die URLs stehen in `lib/config/revenuecat_config.dart`.
