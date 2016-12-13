; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
AppName=FOLKER
AppVerName=FOLKER @version@
AppVersion=@version@
AppPublisher=AGD IDS Mannheim
AppPublisherURL=http://www.ids-mannheim.de
AppSupportURL=http://agd.ids-mannheim.de/html/folker.shtml
AppUpdatesURL=http://agd.ids-mannheim.de/html/folker.shtml
DefaultDirName={pf}\FOLKER
DefaultGroupName=FOLKER
;SetupIconFile=folker.ico
WizardSmallImageFile=folker_install.bmp
LicenseFile=@templatesdir@\windows\innosetup\copyright_folker.txt
InfoAfterFile=@templatesdir@\windows\innosetup\releasenotes_folker.txt
ChangesAssociations=yes


[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"
Name: quicklaunchicon; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
; Library files common to both versions
Source: "@tempdir@\*.jar"; DestDir: "{app}"; Flags: ignoreversion
Source: "@tempdir@\*.zip"; DestDir: "{app}"; Flags: ignoreversion
; New 11-05-2015
Source: "@tempdir@\jre\*"; DestDir: "{app}\jre"; Flags: ignoreversion recursesubdirs

; Icons
Source: "@templatesdir@\windows\icons\*.ico"; DestDir: "{app}"; Flags: ignoreversion
; Kurzanleitung etc.
;Source: "@templatesdir@\documentation\FOLKER-Transkriptionshandbuch.pdf"; DestDir: "{app}"; Flags: ignoreversion
;Source: "@templatesdir@\documentation\Folker_Schnellstart.pdf"; DestDir: "{app}"; Flags: ignoreversion
; Files for SUN JMF Version
Source: "@tempdir@\SunJmf\*"; DestDir: "{app}\SunJMF"; Flags: ignoreversion

[Languages]
Name: de; MessagesFile: "compiler:Languages\German.isl"
Name: en; MessagesFile: "compiler:Default.isl"
Name: fr; MessagesFile: "compiler:Languages\French.isl"
Name: nl; MessagesFile: "compiler:Languages\Dutch.isl"

[INI]
Filename: "{app}\folker.url"; Section: "InternetShortcut"; Key: "URL"; String: "http://agd.ids-mannheim.de/html/folker.shtml"

[Icons]
Name: "{group}\FOLKER"; IconFilename: "{app}\folker.ico"; Filename: "{app}\SunJMF\FolkerWithSun.exe"
Name: "{group}\OrthoNormal"; IconFilename: "{app}\orthonormal.ico"; Filename: "{app}\SunJMF\OrthoNormalWithSun.exe"

Name: "{group}\FOLKER deinstallieren"; Filename: "{uninstallexe}"
Name: "{userdesktop}\FOLKER"; IconFilename: "{app}\folker.ico"; Filename: "{app}\SunJMF\FolkerWithSun.exe"; Tasks: desktopicon
Name: "{group}\FOLKER Website"; IconFilename: "{app}\folker.ico"; Filename: "{app}\folker.url"

[Registry]
Root: HKCR; Subkey: ".flk"; ValueType: string; ValueName: ""; ValueData: "FolkerTranscriptionFile"; Flags: uninsdeletevalue
Root: HKCR; Subkey: "FolkerTranscriptionFile"; ValueType: string; ValueName: ""; ValueData: "Folker Transcription File"; Flags: uninsdeletekey
Root: HKCR; Subkey: "FolkerTranscriptionFile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\folker-document-icon-128.ico"
Root: HKCR; Subkey: "FolkerTranscriptionFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\SunJMF\FolkerWithSun.exe"" ""%1"""

; NEW
Root: HKCR; Subkey: ".fln"; ValueType: string; ValueName: ""; ValueData: "NormalizedFolkerTranscription"; Flags: uninsdeletevalue
Root: HKCR; Subkey: "NormalizedFolkerTranscription"; ValueType: string; ValueName: ""; ValueData: "Normalized Folker Transcription"; Flags: uninsdeletekey
Root: HKCR; Subkey: "NormalizedFolkerTranscription\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\orthonormal.ico"
Root: HKCR; Subkey: "NormalizedFolkerTranscription\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\SunJMF\OrthoNormalWithSun.exe"" ""%1"""


[Run]
Filename: "{app}\SunJMF\FolkerWithSun.exe"; Description: "{cm:LaunchProgram,Folker}"; Flags: shellexec postinstall skipifsilent

[UninstallDelete]
Type: files; Name: "{app}\folker.url"
