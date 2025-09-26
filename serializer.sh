#!/bin/bash

# Execute via "sudo curl https://raw.githubusercontent.com/esu11/misc/refs/heads/main/serializer.sh | sudo bash"

curl "https://apps.esu11.org/Office/Serializer2024.pkg" -o /tmp/Serializer2024.pkg
installer -pkg /tmp/Serializer2024.pkg -target /
rm -rf /tmp/Serializer2024.pkg
