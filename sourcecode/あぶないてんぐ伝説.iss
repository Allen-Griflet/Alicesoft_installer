[Setup]
AppName=あぶないてんぐ伝説
AppVersion=1.0
DefaultDirName={pf}\AliceSoft\tengu
DefaultGroupName=アリスソフト
OutputBaseFilename=Setup
Compression=none
SolidCompression=no
LicenseFile=tengu\配布フリー宣言（アリスソフト）.txt
AppCopyright=\tengu\readme.txt
UninstallDisplayIcon={app}\tengu\adv.exe
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
Source: "tengu\*"; DestDir: "{app}\tengu"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\あぶないてんぐ伝説"; Filename: "{app}\tengu\adv.exe"
Name: "{userdesktop}\あぶないてんぐ伝説"; Filename: "{app}\tengu\adv.exe"; Tasks: desktopicon
Name: "{group}\アンインストール あぶないてんぐ伝説"; Filename: "{uninstallexe}"

[Run]
Filename: "{app}\tengu\adv.exe"; Description: "あぶないてんぐ伝説 を起動"; Flags: nowait postinstall skipifsilent
