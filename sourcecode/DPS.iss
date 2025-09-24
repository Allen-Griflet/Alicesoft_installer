[Setup]
AppName=D.P.S
AppVersion=1.0
DefaultDirName={pf}\AliceSoft\DPS
DefaultGroupName=アリスソフト
OutputBaseFilename=Setup
Compression=none
SolidCompression=no
LicenseFile=dps\配布フリー宣言（アリスソフト）.txt
AppCopyright=\dps\readme.txt
UninstallDisplayIcon={app}\dps\adv.exe
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
Source: "dps\*"; DestDir: "{app}\dps"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\D.P.S"; Filename: "{app}\dps\adv.exe"
Name: "{userdesktop}\D.P.S"; Filename: "{app}\dps\adv.exe"; Tasks: desktopicon
Name: "{group}\アンインストール D.P.S"; Filename: "{uninstallexe}"

[Run]
Filename: "{app}\dps\adv.exe"; Description: "D.P.Sを起動"; Flags: nowait postinstall skipifsilent



