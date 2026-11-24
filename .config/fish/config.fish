if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g fish_color_normal normal
set -g fish_color_command normal
set -g fish_color_param normal
set -g fish_color_error normal
set -g fish_color_quote normal
set -g fish_color_redirection normal
set -g fish_color_comment normal
set -g fish_color_operator normal
set -g fish_color_escape normal
set -g fish_color_end normal

oh-my-posh init fish | source
