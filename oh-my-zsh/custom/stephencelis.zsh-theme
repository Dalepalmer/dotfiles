PROMPT=$'%2~$(git_prompt_info)$(git_prompt_ahead)$(git_prompt_behind) %% '

if which rbenv &> /dev/null
then
  RPROMPT=$'%{${fg[white]}%}$(rbenv version-name)%{${reset_color}%}'
fi

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$bold_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{${fg[yellow]}%}!%{${reset_color}%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{${fg[blue]}%}↑%{${reset_color}%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{${fg[blue]}%}↓%{${reset_color}%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
