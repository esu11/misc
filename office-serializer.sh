#!/bin/bash

# Execute via Mosyle script "curl https://raw.githubusercontent.com/esu11/misc/refs/heads/main/office-serializer.sh | bash ",
# either in post-install of Office apps or as Custom Command/Script

curl "https://apps.esu11.org/Office/Serializer2024.pkg" -o /tmp/Serializer2024.pkg
installer -pkg /tmp/Serializer2024.pkg -target /
rm -rf /tmp/Serializer2024.pkg
