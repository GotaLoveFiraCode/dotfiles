function ll --wraps=ls --wraps='eza --icons=always -lhF --git' --description 'alias ll=eza --icons=always -lhF --git'
  eza --icons=always -lhF --git $argv
        
end
