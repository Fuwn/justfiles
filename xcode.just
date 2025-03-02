_format target:
  swift format --in-place --recursive {{target}}

lint:
  swiftlint lint --quiet

scan:
  mint run peripheryapp/periphery scan

clean:
  xcodebuild clean

_build target:
  xcodebuild -configuration Release -scheme {{target}} build

_open target derived_data='/Users/${USER}/Library/Developer/Xcode/DerivedData':
  open {{derived_data}}/{{target}}-*/Build/Products/Release/{{target}}.app

