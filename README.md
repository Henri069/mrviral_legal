# ViraKin — Rechtstexte

Statische Rechtsseiten für die ViraKin-App. Kein Build, kein Framework, nur HTML
und eine CSS-Datei.

Live: <https://henri069.github.io/mrviral_legal/>

## Aufbau

```
index.html            Übersicht (Deutsch)
privacy.html          Datenschutzerklärung
terms.html            Nutzungsbedingungen
delete-account.html   Konto und Daten löschen
imprint.html          Impressum
style.css             gemeinsames Styling für alle Seiten
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
