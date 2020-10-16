# COMMANDS
alias ..='cd ..'
alias ...='cd ../..'
alias llt="ls -ltrh"
alias lcat='cat "$(ls -rt | tail -n1)"'
alias rdf='readlink -f'
alias cdlast='cd $(ls -t | head -n -1)'

# Applications
alias enw='emacs -nw'
#alias enw='TERM=xterm-16color emacs -nw'
#alias python='python3'

# SSH
#alias goedison='ssh chmodi@edison.nersc.gov'
alias gocyril='ssh modichirag@cyril.astro.berkeley.edu'
alias gocori='ssh chmodi@cori.nersc.gov'
alias goedisonx='ssh -X chmodi@edison.nersc.gov'
alias gocorix='ssh -X chmodi@cori.nersc.gov'
alias govolta='ssh chmodi@voltan.dhcp.lbl.gov'
alias govoltax='ssh -X chmodi@voltan.dhcp.lbl.gov'
alias jupv87='ssh -N -L localhost:8887:localhost:8887 chmodi@voltan.dhcp.lbl.gov'
alias tmjupv87="ssh chmodi@voltan.dhcp.lbl.gov './jup87.sh'"
alias tboard89='ssh -N -L localhost:8889:localhost:8886 chmodi@voltan.dhcp.lbl.gov'