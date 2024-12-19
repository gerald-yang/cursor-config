#!/bin/bash

username=$(whoami)

mkdir -p ~/bin
curl -L https://downloader.cursor.sh/linux/appImage/x64 -o ~/bin/cursor.AppImage
chmod +x ~/bin/cursor.AppImage
cp cursor.png ~/bin/

bash -c "cat > /home/$username/.local/share/applications/cursor.desktop" <<EOL
[Desktop Entry]
Name=Cursor AI IDE
Exec=/home/$username/bin/cursor.AppImage
Icon=/home/$username/bin/cursor.png
Type=Application
Categories=Development;
EOL
