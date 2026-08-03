# ViraKin — Rechtstexte

Statische Rechtsseiten für die ViraKin-App. Kein Build, kein Framework, nur HTML
und eine CSS-Datei.

Live: <https://henri069.github.io/mrviral_legal/>

## Aufbau

```
legal/
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

Die Quelle liegt im App-Repository unter `legal/`. Dieses Repository hier ist nur
das Ziel für GitHub Pages.

```bash
./publish.sh
```

Das Skript kopiert den gesamten Ordner nach
`github.com/Henri069/mrviral_legal` und pusht auf `main`. GitHub Pages baut die
Seite danach innerhalb von ein bis zwei Minuten neu.

Beim Ändern eines Textes bitte das Datum oben auf der Seite mitziehen — in der
deutschen *und* der englischen Fassung.

## Verlinkt aus der App

Die Paywall verlinkt auf `terms.html` und `privacy.html`. Diese Links müssen
erreichbar bleiben, sonst lehnt Apple das Review ab. Die URLs stehen in
`lib/config/revenuecat_config.dart`.
