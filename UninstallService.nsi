# Stop and remove a service

Pop $0 # Path to nssm.exe
Pop $1 # Service name

DetailPrint "Uninstall service: $1"

nsExec::Exec '"$0" stop "$1"'
nsExec::Exec '"$0" remove "$1" confirm'
