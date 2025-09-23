[Setup]
AppName=ぷろ すちゅーでんとG
AppVersion=1.0
DefaultDirName={pf}\AliceSoft\ぷろ すちゅーでんとG
DefaultGroupName=ぷろ すちゅーでんとG
OutputBaseFilename=Setup
Compression=none
SolidCompression=no
LicenseFile=配布フリー宣言（アリスソフト）.txt
AppCopyright=readme.txt
UninstallDisplayIcon={app}\gamedata\system3.exe
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
Name: "{group}\ぷろ すちゅーでんとG"; Filename: "{app}\gamedata\system3.exe"
Name: "{userdesktop}\ぷろ すちゅーでんとG"; Filename: "{app}\gamedata\system3.exe"; Tasks: desktopicon
Name: "{group}\アンインストール ぷろ すちゅーでんとG"; Filename: "{uninstallexe}"

[Run]
Filename: "{app}\gamedata\system3.exe"; Description: "ぷろ すちゅーでんとGを起動"; Flags: nowait postinstall skipifsilent
