Write-Output "" > nou.txt
mkdir rojo 2> nou.txt
mkdir rojo/ReplicatedFirst 2> nou.txt
mkdir rojo/StarterPlayerScripts 2> nou.txt
mkdir rojo/StarterCharacterScripts 2> nou.txt
mkdir rojo/ServerScriptService 2> nou.txt
# 
Set-Location src/Client/Character
Remove-Item -Recurse -Force './Shared' 2> ../../../nou.txt
Copy-Item "../../Shared/" -Destination "./Shared" -Force -Recurse
node ../../../bundle/index.js StarterCharacterScripts script.client.lua
# 
Set-Location ../Player
Remove-Item -Recurse -Force './Shared' 2> ../../../nou.txt
Copy-Item "../../Shared/" -Destination "./Shared" -Force -Recurse
node ../../../bundle/index.js StarterPlayerScripts script.client.lua
# 
Set-Location ../First
Remove-Item -Recurse -Force './Shared' 2> ../../../nou.txt
Copy-Item "../../Shared/" -Destination "./Shared" -Force -Recurse
node ../../../bundle/index.js ReplicatedFirst script.client.lua
# 
Set-Location ../../Server/
Remove-Item -Recurse -Force './Shared' 2> ../../nou.txt
Copy-Item "../Shared/" -Destination "./Shared" -Force -Recurse
node ../../bundle/index.js ServerScriptService script.server.lua
# 
Set-Location ../../
Remove-Item nou.txt
