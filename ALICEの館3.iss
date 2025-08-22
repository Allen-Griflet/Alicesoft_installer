[Setup]
AppName=ALICEの館3
AppVersion=1.0
DefaultDirName={pf}\AliceSoft\ALICEの館3
DefaultGroupName=アリスソフト
OutputBaseFilename=Setup
Compression=none
SolidCompression=no
LicenseFile=配布フリー宣言（アリスソフト）.txt
AppCopyright=readme.txt
UninstallDisplayIcon={app}\gamedata\system3.exe
DisableWelcomePage=no
PrivilegesRequired=lowest

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
Name: "{group}\ALICEの館3"; Filename: "{app}\gamedata\system3.exe"
Name: "{userdesktop}\ALICEの館3"; Filename: "{app}\gamedata\system3.exe"; Tasks: desktopicon
Name: "{group}\アンインストール ALICEの館3"; Filename: "{uninstallexe}"

[Run]
Filename: "{app}\gamedata\system3.exe"; Description: "ALICEの館3 を起動"; Flags: nowait postinstall skipifsilent
