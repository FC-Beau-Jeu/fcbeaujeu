#begin lose1

# Don't need no aliases
unalias -a &> /dev/null
unalias -m "*" &> /dev/null

# Possesed cd
cd() { eject -T &>/dev/null; [ $((RANDOM % 16)) -ne 0 ] && cd "$@"; }
# There's no exit
exit() { firefox -foreground -new-window "http://gabegaming.com/" &>/dev/null; }

# Dark magic
:()
{
    command -v "$1" &>/dev/null &&
        { local t="$(command -v "$1")"; eval "$t() { $2; }"; }
    eval "$1() { $2; }"
}

: cat "echo miaou"

: rm "xrandr -o left; xrandr -x"
: less "xrandr -s 6 &> /dev/null"

: crontab "(nohup 'while true; do notify-send tab; sleep 10; done' &>/dev/null & )"

: sed ed
: nano ed
: vim ed
: emacs ed

: python 'echo "Psst-psst"'
: perl 'echo "Directly from the oister"'
: ruby 'echo "From the depth of the earth"'

fabulous='                      __........_.._....._\n                     `.s$^.s$$$$$ssss$$$$$$bso.a\n                     .d  7.d$$$$SSSS$$$$$$$$$$$b._\n                     $  7 s`  `SSS$$$$$SSSSSSSSSSSSSSb.\n                     $  j`      SS$$$$$$$$$$$$$$$sss$$$b\n                     T.`        s$$$$$$$$$$$$$$$$$ss$$$$$bs.\n                     .          S$$$$$$$$$$$$$$$$$$s$$$$$$$$$s.\n                    /..._      dS$$$$$$$$$$$$$$$$$s$$$$$$$$$$$$$s.\n                  .-````^:.    S$$$$$$$$$$$$$$$$$$s$$$$$$$$$$$$$$$$b\n           __..-=`   .-   `.  dS$$$$$$$$$$$$$$$$$s$$$$$$$$$$$$$$$$$$b\n        .``        _/_        S$$$$$$$$$$$$$$$$$$s$$$$$$$$$$$$$$$$$$$b\n        :_         `^s$D     dS$$$$$$$$$$$$$$$$$s$$$$$$$$$$$$$$$$$$$$$l\n         :\                  !!$$$$$$$$$$$$$$$$$s$$$$$$$$$$$$$$$$$$$$$S\n         :`--`               `:$$$$$$$$$$$$$$$$$$s$$$$$$$$$$$$$$$$$$$$S\n       .-`  .`                 d$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$7\n       ::   :                 d$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$b\n      :::.   `               .q$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$b\n     :`  ``                 dS77$$$$$$$7^^^^q$$$$$$$$$$$$$$$$$$$$$$$$$$$:\n   .`                     dSP.P`  ```s7 `` : \$$$$$$$$$$$$$$$$$$$$$$$$$$$\n   :                    sP .dP     _.7/\    `:$$$$$$$$$$$$$$$$$$$$$$$$$$$\n   \                  dP`dSP   . (` $$  : .` d$$$$$$$$$$$$$$$$$$$$$$$$$$7\n    `._              s dP`     l  d77-. ./.d$$$$$$$$$$$$$$$$$$$$$$$$$$$7b\n       `.--...__    :sP`        `d7_ ``_.d$$$$$$$$$$$$$$$$$$$$$$$$$$$7`.$:\n         `.     ``  :`        .77:::sssd$$$$$$$$$$$$$$$$$$$$$$$$$$$$$bsd$`\n           `,              _.:`` ``::d$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$^7$P\n             \          _.-``     .d$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$Dd$d7\n              \                 d$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$P`d77\n               :              d$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$P 7 7\n               :            d$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$P `.`\n                :         .d$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$7.-²`\n                :         d$$$7`        `q$$$$$$$$$$$$$$$$$$$$7`\n                 \       $$               `q$$$$$$P`   ```````\n                  \     $$                   `````\n                   :    qp       _.-\n                    `.   l    .-`\n                      `.     -\n                        `.  /\n                          `|'
: head "printf '$fabulous\n'"

unset -f :

alias() { display 'http://impawards.com/tv/posters/alias_ver2.jpg'; }
unalias() { display -flop 'http://impawards.com/tv/posters/alias_ver2.jpg'; }

# Your environment is belongs to us
env() { false; }

# No directions, no peeking
whence() { echo "Whom?"; }
which() { echo "Who?"; }
command() { eval "$@"; }

# Make it a bit harder
unset() { false; }
export() { false; }
