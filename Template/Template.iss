[Setup]
AppName=MyGame ; ショートカットとかの名前
AppVersion=1.0
DefaultDirName={pf}\MyGame
DefaultGroupName=MyGame ; スタートメニュー
OutputBaseFilename=Setup
Compression=none         ; CDからの直接実行に最適
SolidCompression=no
LicenseFile=eula.txt
UninstallDisplayIcon={app}gamedata\MyGame.exe
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
Source: "data\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\MyGame"; Filename: "{app}\MyGame.exe"
Name: "{userdesktop}\MyGame"; Filename: "{app}\MyGame.exe"; Tasks: desktopicon
Name: "{group}\アンインストール MyGame"; Filename: "{uninstallexe}"

[Run]
Filename: "{app}\MyGame.exe"; Description: "MyGame を起動"; Flags: nowait postinstall skipifsilent

