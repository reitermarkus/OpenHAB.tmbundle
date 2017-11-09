TM_LANGUAGE = Syntaxes/OpenHAB.tmLanguage
JSON = https://raw.githubusercontent.com/openhab/openhab-vscode/master/syntaxes/openhab.tmLanguage.json

all: $(TM_LANGUAGE)

$(TM_LANGUAGE):
	mkdir -p $(dir $(TM_LANGUAGE))
	curl -L $(JSON) | plutil -convert xml1 - -o $@
	/usr/libexec/PlistBuddy -c "Add :uuid string '7EE8F85E-CC78-439C-9C87-2158CEA6C0B2'" $@
