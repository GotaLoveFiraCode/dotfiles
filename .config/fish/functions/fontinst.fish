function fontinst --wraps='mv $1 /home/ltr/.local/share/fonts/ && fc-cache -fv' --description 'alias fontinst=mv $1 /home/ltr/.local/share/fonts/ && fc-cache -fv'
  mv $argv /home/ltr/.local/share/fonts/ && fc-cache -fv
end
