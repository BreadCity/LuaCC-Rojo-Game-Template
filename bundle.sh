#!/bin/bash
touch nou.txt
mkdir rojo 2> nou.txt
mkdir rojo/ReplicatedFirst 2> nou.txt
mkdir rojo/StarterPlayerScripts 2> nou.txt
mkdir rojo/StarterCharacterScripts 2> nou.txt
mkdir rojo/ServerScriptService 2> nou.txt
# 
cd src/Client/Character
rm -rf ./Shared
cp -r ../../Shared ./Shared
node ../../../bundle/index.js StarterCharacterScripts script.client.lua
# 
cd ../Player
rm -rf ./Shared
cp -r ../../Shared ./Shared
node ../../../bundle/index.js StarterPlayerScripts script.client.lua
# 
cd ../First
rm -rf ./Shared
cp -r ../../Shared ./Shared
node ../../../bundle/index.js ReplicatedFirst script.client.lua
# 
cd ../../Server/
rm -rf ./Shared
cp -r ../Shared ./Shared
node ../../bundle/index.js ServerScriptService script.server.lua
# 
cd ../../
rm nou.txt
