function show
  for app in $APPS 
    /usr/libexec/PlistBuddy -c 'Delete :LSUIElement' /Applications/$app.app/Contents/Info.plist
  end
end

