[Setup]
AppName=Intruder 桜屋敷の探索
AppVersion=1.0
DefaultDirName={pf}\AliceSoft\intr
DefaultGroupName=アリスソフト
OutputBaseFilename=Setup
Compression=none
SolidCompression=no
LicenseFile=intr\配布フリー宣言（アリスソフト）.txt
AppCopyright=\intr\readme.txt
UninstallDisplayIcon={app}\intr\adv.exe
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
Source: "intr\*"; DestDir: "{app}\intr"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\Intruder 桜屋敷の探索"; Filename: "{app}\intr\adv.exe"
Name: "{userdesktop}\Intruder 桜屋敷の探索"; Filename: "{app}\intr\adv.exe"; Tasks: desktopicon
Name: "{group}\アンインストール Intruder 桜屋敷の探索"; Filename: "{uninstallexe}"

[Run]
Filename: "{app}\intr\adv.exe"; Description: "Intruder 桜屋敷の探索 を起動"; Flags: nowait postinstall skipifsilent


