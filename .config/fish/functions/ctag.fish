function ctag --wraps='ctags -R --exclude="target/*" --exclude=".git"' --description 'alias ctag=ctags -R --exclude="target/*" --exclude=".git"'
  ctags -R --exclude="target/*" --exclude=".git" $argv
        
end
