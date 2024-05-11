function z --wraps='command fd -Lt f --min-depth=2 | zf' --description 'alias z=command fd -Lt f --min-depth=2 | zf'
  command fd -Lt f --min-depth=2 | zf $argv
        
end
