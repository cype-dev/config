# Defined in /tmp/fish.ox5w2j/bobthefish_colors.fish @ line 2
function bobthefish_colors --description 'Gruvbox dark soft color scheme' --no-scope-shadowing
	__bobthefish_colors gruvbox

    set -l base00 32302f    # dark01
    set -l base01 3c3836    # dark02
    set -l base02 504945    # dark03
    set -l base03 665c54    # dark04
    set -l base04 bdae93    # light01
    set -l base05 d5c4a1    # light02
    set -l base06 ebdbb2    # light03
    set -l base07 fbf1c7    # light04
    set -l base08 fb4934    # faded red
    set -l base09 fe8019    # faded orange
    set -l base0A fabd2f    # light orange
    set -l base0B b8bb26    # light green
    set -l base0C 8ec07c    # faded green
    set -l base0D 83a598    # faded blue
    set -l base0E d3869b    # faded purple
    set -l base0F d65d0e    # dark orange

    set -l colorfg  $base02
    set -l colorfgd $base01
    
    set -x color_initial_segment_exit     $base01 $base08
    set -x color_initial_segment_su       $base01 $base0B
    set -x color_initial_segment_jobs     $base01 $base0D
    
    set -x color_path                     $base02 $base05
    set -x color_path_basename            $base02 $base06
    set -x color_path_nowrite             $base02 $base08
    set -x color_path_nowrite_basename    $base02 $base08
    
    set -x color_repo                     $base0B $colorfg
    set -x color_repo_work_tree           $base02 $colorfg
    set -x color_repo_dirty               $base08 $colorfg
    set -x color_repo_staged              $base09 $colorfg
    
    set -x color_vi_mode_default          $base03 $colorfgd
    set -x color_vi_mode_insert           $base0D $colorfgd
    set -x color_vi_mode_visual           $base09 $colorfgd
    
    set -x color_vagrant                  $base0C $colorfg
    set -x color_username                 $base02 $base0D 
    set -x color_hostname                 $base02 $base0D
    set -x color_rvm                      $base08 $colorfg
    set -x color_virtualfish              $base0D $colorfg
    set -x color_virtualgo                $base0D $colorfg
    set -x color_desk                     $base0D $colorfg
end
