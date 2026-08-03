#!/usr/bin/env bash
# Veröffentlicht alles aus diesem Ordner nach
#   https://github.com/Henri069/mrviral_legal
# und damit auf
#   https://henri069.github.io/mrviral_legal/
#
# Der Ordner ist die Quelle, das Repository nur das Ziel. Was hier liegt,
# ersetzt dort den kompletten Inhalt — auch Dateien, die hier gelöscht wurden.
set -euo pipefail

REPO="https://github.com/Henri069/mrviral_legal.git"
BRANCH="main"

SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WORK="$(mktemp -d)"
trap 'rm -rf "$WORK"' EXIT

echo "→ Repository holen"
git clone --quiet --depth 1 "$REPO" "$WORK"

# Ein leeres Repository hat noch keinen Branch. symbolic-ref funktioniert in
# beiden Fällen, checkout -B nicht.
git -C "$WORK" symbolic-ref HEAD "refs/heads/$BRANCH"

echo "→ Inhalt ersetzen"
find "$WORK" -mindepth 1 -maxdepth 1 ! -name .git -exec rm -rf {} +
cp -R "$SRC"/. "$WORK"/

git -C "$WORK" add -A
if git -C "$WORK" diff --cached --quiet; then
  echo "✓ Nichts geändert, nichts zu tun."
  exit 0
fi

git -C "$WORK" commit --quiet -m "Rechtstexte aktualisiert ($(date +%Y-%m-%d))"
echo "→ Pushen"
git -C "$WORK" push --quiet -u origin "$BRANCH"

echo "✓ Veröffentlicht → https://henri069.github.io/mrviral_legal/"
echo "  GitHub Pages braucht ein bis zwei Minuten."
