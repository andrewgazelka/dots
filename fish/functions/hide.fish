function hide
  for app in $APPS
    /usr/libexec/PlistBuddy -c 'Add :LSUIElement bool true' /Applications/$app.app/Contents/Info.plist 
  end
end
