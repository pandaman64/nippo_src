#!/usr/bin/env bash
set -euo pipefail
d=$(date +%F)
fp="src/$d.md"
template=$(cat << EOF
---
title: 日報 $d
---

|||
|:-|:-:|
||就寝|
||起床|

## 日課

- [ ] 恋声
- [ ] 運動
- [ ] 研究
    - [ ] インプット
    - [ ] アウトプット

EOF
)
if [ -f "$fp" ]; then
  echo "file already exists at $fp"
  exit 1
else
  echo "creating entry at $fp"
  echo "$template" > $fp
fi
