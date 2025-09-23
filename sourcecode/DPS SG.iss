[Setup]
AppName=D.P.S SG
AppVersion=1.0
DefaultDirName={pf}\AliceSoft\D.P.S SG
DefaultGroupName=アリスソフト
OutputBaseFilename=Setup
Compression=none
SolidCompression=no
LicenseFile=配布フリー宣言（アリスソフト）.txt
AppCopyright=readme.txt
UninstallDisplayIcon=no
DisableWelcomePage=no
PrivilegesRequired=admin

[Languages]
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"

[Components]
Name: "main"; Description: "ゲーム本体（必須）"; Flags: fixed
Name: "bonus"; Description: "追加パック（HDテクスチャなど）"; Types: full compact custom

[Tasks]
Name: "desktopicon"; Description: "デスクトップにショートカットを作成"; GroupDescription: "追加オプション:"; Flags: checkedonce

[Files]
Source: "gamedata\*"; DestDir: "{app}\gamedata"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\Fahren Fliegen"; Filename: "{app}\gamedata\system3.exe"
Name: "{userdesktop}\Fahren Fliegen"; Filename: "{app}\gamedata\system3.exe"; Tasks: desktopicon
Name: "{group}\家庭教師はステキなお仕事"; Filename: "{app}\gamedata\system3.exe"
Name: "{userdesktop}\家庭教師はステキなお仕事"; Filename: "{app}\gamedata\system3.exe"; Tasks: desktopicon
Name: "{group}\信長の淫謀"; Filename: "{app}\gamedata\system3.exe"
Name: "{userdesktop}\信長の淫謀"; Filename: "{app}\gamedata\system3.exe"; Tasks: desktopicon
Name: "{group}\アンインストール DPS SG"; Filename: "{uninstallexe}"
