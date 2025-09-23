[Setup]
AppName=Super DPS
AppVersion=1.0
DefaultDirName={pf}\AliceSoft\Super DPS
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
Source: "カンパン\*"; DestDir: "{app}\カンパン"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "遠野の森\*"; DestDir: "{app}\遠野の森"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "海賊稼業\*"; DestDir: "{app}\海賊稼業"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\カンパン"; Filename: "{app}\カンパン\adv.exe"
Name: "{userdesktop}\カンパン"; Filename: "{app}\カンパン\adv.exe"; Tasks: desktopicon
Name: "{group}\遠野の森"; Filename: "{app}\遠野の森\adv.exe"
Name: "{userdesktop}\遠野の森"; Filename: "{app}\遠野の森\adv.exe"; Tasks: desktopicon
Name: "{group}\海賊稼業"; Filename: "{app}\海賊稼業\adv.exe"
Name: "{userdesktop}\海賊稼業"; Filename: "{app}\海賊稼業\adv.exe"; Tasks: desktopicon
Name: "{group}\アンインストール Super DPS"; Filename: "{uninstallexe}"
