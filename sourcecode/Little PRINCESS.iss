[Setup]
AppName=Little PRINCESS
AppVersion=1.0
DefaultDirName={pf}\AliceSoft\lp
DefaultGroupName=アリスソフト
OutputBaseFilename=Setup
Compression=none
SolidCompression=no
LicenseFile=intr\配布フリー宣言（アリスソフト）.txt
AppCopyright=\lp\readme.txt
UninstallDisplayIcon={app}\lp\lp32.exe
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
Source: "lp\*"; DestDir: "{app}\lp"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\Little PRINCESS"; Filename: "{app}\lp\lp32.exe"
Name: "{userdesktop}\Little PRINCESS"; Filename: "{app}\lp\lp32.exe"; Tasks: desktopicon
Name: "{group}\アンインストール Little PRINCESS"; Filename: "{uninstallexe}"

[Run]
Filename: "{app}\lp\lp32.exe"; Description: "Little PRINCESS を起動"; Flags: nowait postinstall skipifsilent
