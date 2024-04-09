function lptpscrn --wraps='wlr-randr --output eDP-1' --description 'alias lptpscrn=wlr-randr --output eDP-1'
  wlr-randr --output eDP-1 $argv
        
end
