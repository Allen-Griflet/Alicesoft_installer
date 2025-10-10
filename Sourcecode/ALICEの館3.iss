;========================================================
;  Program Name : Setup.exe
;  File         : ALICEの館3.iss
;  Author       : Allen.Griflet(https://github.com/Allen-Griflet)
;  Created      : 2025-09-24
;  Last Update  : 2025-09-24
;  Description  : Installer script for ALICEの館3
;  License      : license.txt
;========================================================

[Setup]
AppName=ALICEの館3
AppVersion=1.0
DefaultDirName={pf}\AliceSoft\ALICEの館3
DefaultGroupName=アリスソフト
OutputBaseFilename=Setup
Compression=none
SolidCompression=no
LicenseFile=license.txt
InfoBeforeFile=yakata3_cd\readme.txt
InfoAfterFile=yakata3_cd\配布フリー宣言（アリスソフト）.txt
AppCopyright=yakata3_cd\readme.txt
UninstallDisplayIcon={app}\yakata3\gamedata\system3.exe
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
Source: "yakata3_cd\*"; DestDir: "{app}\yakata3"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\ALICEの館3"; Filename: "{app}\yakata3\gamedata\system3.exe"
Name: "{userdesktop}\ALICEの館3"; Filename: "{app}\yakata3\gamedata\system3.exe"; Tasks: desktopicon
Name: "{group}\アンインストール ALICEの館3"; Filename: "{uninstallexe}"

[Run]
Filename: "{app}\gamedata\system3.exe"; Description: "ALICEの館3を起動"; Flags: nowait postinstall skipifsilent
