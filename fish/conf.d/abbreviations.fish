if status --is-interactive
    abbr -a -g listoptional 'pacman -Qqdtt'
    abbr -a -g please       'commandline -j "sudo $history[1]"'
    abbr -a -g ppd          'cat ~/.cpd'
    abbr -a -g spd          'echo (pwd) > ~/.cpd'
    abbr -a -g perfrec      'perf record --call-graph=dwarf'
    abbr -a -g perfrep      'perf report'
    abbr -a -g xclipc       'xclip -selection clipboard'
    abbr -a -g khali        'khal interactive'
    abbr -a -g news         'newsboat'
    abbr -a -g ncm          'ncmpcpp'
    abbr -a -g notes        'preview ~/notes'
end
