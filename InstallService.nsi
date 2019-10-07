# Add and start a service

Pop $0 # Path to nssm.exe
Pop $1 # Service name
Pop $2 # Executable
Pop $3 # Working directory
Pop $4 # Parameters

DetailPrint "Install service: $1"

nsExec::Exec '"$0" install "$1" "$2"'
nsExec::Exec '"$0" set "$1" AppDirectory "$3"'
nsExec::Exec '"$0" set "$1" AppParameters "$4"'
nsExec::Exec '"$0" set "$1" Start SERVICE_DEMAND_START'
