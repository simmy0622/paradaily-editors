#!/bin/bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
OUT="$ROOT/dist"
rm -rf "$OUT"
mkdir -p "$OUT/poster-9x16" "$OUT/poster-4x3" "$OUT/wechat" "$OUT/all"

cp "$ROOT/paradaily-editor.html" "$OUT/poster-9x16/"
cp -R "$ROOT/brand" "$OUT/poster-9x16/"
cp "$ROOT/README.md" "$OUT/poster-9x16/"

cp "$ROOT/paradaily-editor-4x3.html" "$OUT/poster-4x3/"
cp -R "$ROOT/brand" "$OUT/poster-4x3/"
cp "$ROOT/README.md" "$OUT/poster-4x3/"

cp "$ROOT/paradaily-wechat-editor.html" "$OUT/wechat/"
cp -R "$ROOT/brand" "$OUT/wechat/"
cp "$ROOT/README.md" "$OUT/wechat/"

cp "$ROOT/paradaily-editor.html" "$ROOT/paradaily-editor-4x3.html" "$ROOT/paradaily-wechat-editor.html" "$ROOT/README.md" "$OUT/all/"
cp -R "$ROOT/brand" "$OUT/all/"

cd "$OUT"
zip -r poster-9x16.zip poster-9x16
zip -r poster-4x3.zip poster-4x3
zip -r wechat.zip wechat
zip -r all.zip all
echo "Packed into $OUT"
