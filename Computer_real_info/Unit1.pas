unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls,WinSock,Registry,tlhelp32, Menus,MMsystem;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    TabSheet2: TTabSheet;
    Edit3: TEdit;
    Memo1: TMemo;
    Button2: TButton;
    P1: TProgressBar;
    Timer1: TTimer;
    Label3: TLabel;
    Memo2: TMemo;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Timer2: TTimer;
    Edit4: TEdit;
    Button3: TButton;
    Edit5: TEdit;
    Label7: TLabel;
    tabsheet3: TTabSheet;
    Memo3: TMemo;
    Button5: TButton;
    Button6: TButton;
    SaveDialog1: TSaveDialog;
    Label8: TLabel;
    Button4: TButton;
    Label9: TLabel;
    Edit6: TEdit;
    Button7: TButton;
    TabSheet4: TTabSheet;
    Button10: TButton;
    ListBox1: TListBox;
    Button11: TButton;
    Label10: TLabel;
    Edit7: TEdit;
    Label11: TLabel;
    Button14: TButton;
    Edit8: TEdit;
    Button12: TButton;
    Memo4: TMemo;
    Label12: TLabel;
    Button13: TButton;
    Button15: TButton;
    Timer3: TTimer;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    SaveDialog2: TSaveDialog;
    Label13: TLabel;
    ListBox2: TListBox;
    N3: TMenuItem;
    Timer4: TTimer;
    TabSheet5: TTabSheet;
    Memo5: TMemo;
    Button16: TButton;
    Button17: TButton;
    ListBox3: TListBox;
    Button18: TButton;
    Button19: TButton;
    Memo6: TMemo;
    TabSheet6: TTabSheet;
    Button8: TButton;
    Button9: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    Edit9: TEdit;
    Button25: TButton;
    OpenDialog1: TOpenDialog;
    Edit10: TEdit;
    Button26: TButton;
    OpenDialog2: TOpenDialog;
    Button27: TButton;
    Memo7: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);

    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

 type
  TWinVersion = (wvUnknown, wv95, wv98, wvME, wvNT3, wvNT4, wvW2K, wvXP);

var
  Form1: TForm1;
  Computer: Array[1..100] of String[25];
    ComputerCount : Integer;
    MemoryStatus : TMemoryStatus; 
implementation

{$R *.dfm}
const
   DRIVER_INFORMATION = 11;

 type
   TPDWord = ^DWORD;

   TDriverInfo = packed record
     Address: Pointer;
     Unknown1: DWORD;
     Unknown2: DWORD;
     EntryIndex: DWORD;
     Unknown4: DWORD;
     Name: array [0..MAX_PATH + 3] of Char;
   end;

 var
   NtQuerySystemInformation: function (infoClass: DWORD;
   buffer: Pointer;
   bufSize: DWORD;
   returnSize: TPDword): DWORD; stdcall = nil;

 const SHFMT_DRV_A = 0;
 const SHFMT_DRV_B = 1; 

 const SHFMT_ID_DEFAULT = $FFFF; 
 
 const SHFMT_OPT_QUICKFORMAT = 0; 
 const SHFMT_OPT_FULLFORMAT = 1; 
 const SHFMT_OPT_SYSONLY = 2; 
 
 const SHFMT_ERROR = -1; 
 const SHFMT_CANCEL = -2; 
 const SHFMT_NOFORMAT = -3;

 function GetDriverInfo: string;
   var
      temp, Index, numBytes, numEntries: DWORD;
     buf: TPDword;
     driverInfo: ^TDriverInfo;
   begin
     if @NtQuerySystemInformation = nil then
       NtQuerySystemInformation := GetProcAddress(GetModuleHandle('ntdll.dll'),
         'NtQuerySystemInformation');

     // Obtain required buffer size 
    NtQuerySystemInformation(DRIVER_INFORMATION, @temp, 0, @numBytes);
     // Allocate buffer 
    buf := AllocMem(numBytes * 2);

     NtQuerySystemInformation(DRIVER_INFORMATION, buf, numBytes * 2, @numBytes);
     numEntries := buf^;
     driverInfo := Pointer(DWORD(buf) + 12);
     Result     := '';
     for Index := 1 to numEntries do
      begin
       Result:= Result + '#0$D#0$A'+'Address: $' + IntToHex(DWORD(driverInfo^.Address), 8) +
         'Name: "' + (driverInfo^.Name) + '"'+#10+#13;
       Inc(driverInfo);
     end;
     Delete(Result, 1, 2);
     FreeMem(buf);
   end;
 
  function GetFileDate(FileName: string): string;

var
  FHandle: Integer;

begin
  FHandle := FileOpen(FileName, 0);
  try
    Result := DateTimeToStr(FileDateToDateTime(FileGetDate(FHandle)));
  finally
    FileClose(FHandle);
  end;
end;
 function SHFormatDrive(hWnd : HWND;
                        Drive : Word; 
                        fmtID : Word; 
                        Options : Word) : Longint
    stdcall; external 'Shell32.dll' name 'SHFormatDrive';
function IPAddrToName(IPAddr : String): String;
var
  SockAddrIn: TSockAddrIn;
  HostEnt: PHostEnt;
  WSAData: TWSAData;
begin
  WSAStartup($101, WSAData);
  SockAddrIn.sin_addr.s_addr:= inet_addr(PChar(IPAddr));
  HostEnt:= gethostbyaddr(@SockAddrIn.sin_addr.S_addr, 4, AF_INET);
  if HostEnt<>nil then
  begin 
    result:=StrPas(Hostent^.h_name) 
  end 
  else 
  begin 
    result:=''; 
  end; 
end;

 function DoIExist(WndTitle : String) : Boolean; 
var 
  hSem    : THandle; 
  hWndMe, 
  hWndPrev : HWnd; 
  semNm, 
  wTtl    : Array[0..256] of Char; 
begin 
 
  Result := False; 
 
  //Copy the Pascal strings into the Arrays of Char; 
  StrPCopy(semNm, 'SemaphoreName'); 
  StrPCopy(wTtl, WndTitle); 
 
  //Create a Semaphore in memory 
  hSem := CreateSemaphore(nil, 0, 1, semNm); 
 
  //Now, check to see if the semaphore exists 
  if ((hSem <> 0) AND (GetLastError() = ERROR_ALREADY_EXISTS)) then begin 
    CloseHandle(hSem); 
 
    //We'll first get the currently executing window's handle then change its title 
    //so we can look for the other instance 
    hWndMe := FindWindow(nil, wTtl); 
    SetWindowText(hWndMe, 'zzzzzzz'); 
 
    //What we want to do now is search for the other instance of this window 
    //then bring it to the top of the Z-order stack. 
    hWndMe := FindWindow(nil, wTtl); 
    if (hWndMe <> 0) then begin 
      if IsIconic(hWndMe) then 
        ShowWindow(hWndMe, SW_SHOWNORMAL) 
      else 
        SetForegroundWindow(hWndMe); 
    end; 
 
    Result := True; 
 
    //Could put the Halt here, instead of in the FormCreate method, 
    //unless you want to do some extra processing. 
 
    //Halt; 
  end; 
end; 
 
 procedure ShowDesktop(const YesNo : boolean);
var h : THandle;
begin
 h := FindWindow('ProgMan', nil);
 h := GetWindow(h, GW_CHILD);
 if YesNo = True then
   ShowWindow(h, SW_SHOW)
 else
   ShowWindow(h, SW_HIDE);
   end;


 procedure FindAllComputers(Workgroup: String);
 Var  EnumHandle: THandle;
 WorkgroupRS : TNetResource;
   Buf: Array[1..500] of TNetResource;
     BufSize:cardinal;   Entries:cardinal;
       Result      : Integer;
 begin   ComputerCount := 0;
 Workgroup := Workgroup + #0;
 FillChar(WorkgroupRS, SizeOf(WorkgroupRS) , 0);
 With WorkgroupRS do begin
 dwScope := 2;
 dwType := 3;
 dwDisplayType := 1;
 dwUsage := 2;
 lpRemoteName := @Workgroup[1];
   end;
 WNetOpenEnum( RESOURCE_GLOBALNET,RESOURCETYPE_ANY,0,@WorkgroupRS,EnumHandle );
 Repeat
 Entries := 1;
 BufSize := SizeOf(Buf);
 Result :=WNetEnumResource( EnumHandle,Entries,@Buf,BufSize);
 If (Result = NO_ERROR) and (Entries = 1) then
  begin
  Inc( ComputerCount );
  Computer[ ComputerCount ] := StrPas(Buf[1].lpRemoteName);
  end;
  Until (Entries <> 1) or (Result <> NO_ERROR);
  WNetCloseEnum( EnumHandle );
 end;  { Find All Computers }
 
 function GetCurrentUserName: string;
 const
   cnMaxUserNameLen = 254;
 var
   sUserName: string;
   dwUserNameLen: DWORD;
 begin
   dwUserNameLen := cnMaxUserNameLen - 1;
   SetLength(sUserName, cnMaxUserNameLen);
   GetUserName(PChar(sUserName), dwUserNameLen);
   SetLength(sUserName, dwUserNameLen);
   Result := sUserName;
 end;
 function GetComputerNetName: string;
var
  buffer: array[0..255] of char;
  size: dword;
begin
  size := 256;
  if GetComputerName(buffer, size) then
    Result := buffer
  else
    Result := ''
    end;
    procedure TForm1.Button5Click(Sender: TObject);
begin
  button4.Enabled:=true;
   memo3.Clear;
   button5.Enabled:=false;
   button6.Enabled:=false;
end;


procedure TForm1.Button6Click(Sender: TObject);
begin
if savedialog1.Execute then
memo1.Lines.SaveToFile(savedialog1.FileName) ;
end;




procedure TForm1.Button1Click(Sender: TObject);
const TokenSize = 800; //  (SizeOf(Pointer)=4 *200)
var
   hToken: THandle;
   pTokenInfo: PTOKENPRIVILEGES;
   ReturnLen: Cardinal;
   i: Integer;
   PrivName: PChar;
   DisplayName: PChar;
   NameSize: Cardinal;
   DisplSize: Cardinal;
   LangId: Cardinal;
begin
memo2.Lines.Clear;
edit1.text:=GetComputerNetName;
edit2.text:= GetCurrentUserName;
 GetMem(pTokenInfo, TokenSize);
   if not OpenProcessToken(GetCurrentProcess(), TOKEN_ADJUST_PRIVILEGES or TOKEN_QUERY,
     hToken) then ShowMessage('OpenProcessToken error');
   if not GetTokenInformation(hToken, TokenPrivileges, pTokenInfo, TokenSize, ReturnLen) then
     ShowMessage('GetTokenInformation error');
   GetMem(PrivName, 255);
   GetMem(DisplayName, 255);
   for i := 0 to pTokenInfo.PrivilegeCount - 1 do
   begin
     DisplSize := 255;
     NameSize  := 255;
     LookupPrivilegeName(nil, pTokenInfo.Privileges[i].Luid, PrivName, Namesize);
     LookupPrivilegeDisplayName(nil, PrivName, DisplayName, DisplSize, LangId);
     memo2.lines.Add(PrivName +^I + DisplayName);
   end;
   FreeMem(PrivName);
   FreeMem(DisplayName);
   FreeMem(pTokenInfo);


end;

procedure TForm1.Button2Click(Sender: TObject);
var i:integer;
begin
p1.Position:=10;
memo1.Lines.Clear;
p1.Position:=20;
sleep(1);
p1.Position:=30;
memo1.Lines.add('Подожди,блин...');
 p1.Position:=35;
memo1.Lines.add('---');
findallcomputers(edit3.text);
p1.Position:=40;
for i:=1 to computercount do
begin
memo1.Lines.Add(computer[i]);

end;
p1.Position:=60;
memo1.Lines.add('---');
p1.Position:=80;
memo1.Lines.add('Всё.Кончил!!!.');
showmessage('Сканирование завершено!');
p1.Position:=100;
timer1.Enabled:=true;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
p1.Position:=0;
timer1.Enabled:=false;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
 label5.Caption:=datetostr(date);
label6.Caption:=timetostr(time);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
edit4.Enabled:=true;
   edit4.Text:=IPAddrToName(Edit5.Text);
end;

procedure TForm1.Button4Click(Sender: TObject);

var
  reg : TRegistry;
  ts : TStrings; 
  i : integer;
begin 
  reg := TRegistry.Create;
  reg.RootKey := HKEY_CURRENT_USER; 
  reg.LazyWrite := false; 
  reg.OpenKey( 
   'Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders', 
              false); 
    ts := TStringList.Create; 
    reg.GetValueNames(ts); 
    for i := 0 to ts.Count -1 do begin
      Memo3.Lines.Add(ts.Strings[i] +
                      ' = ' + 
                      reg.ReadString(ts.Strings[i])); 
    end;
    ts.Free; 
  reg.CloseKey; 
  reg.free;
  button4.Enabled:=false;
  button5.Enabled:=true;
  button6.Enabled:=true;
end;
 function KillTask(FileName: string): integer;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
const
  PROCESS_TERMINATE = $0001;
begin
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := Sizeof(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
  while integer(ContinueLoop) <> 0 do
  begin
    if
      ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
      UpperCase(FileName))
      or (UpperCase(FProcessEntry32.szExeFile) = UpperCase(FileName))) then
      Result := Integer(TerminateProcess(OpenProcess(PROCESS_TERMINATE, BOOL(0),

        FProcessEntry32.th32ProcessID), 0));
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;




procedure TForm1.Button7Click(Sender: TObject);
begin
 if (KillTask(edit6.Text)=0) then
 begin
  showmessage('А я в танке!!!');
 end else
  begin
 showmessage('Ай-яй-яй!Убили!!!');
  end;
end;

procedure TForm1.Button8Click(Sender: TObject);
var
  H: Integer;
begin

 H := FindWindow('Shell_TrayWnd',
    nil); {??????? ????? ???? ????????}
  if (H = 0) then
    Application.MessageBox('Window not found', nil, IDOK) {? ????? ?? ????? ?!
    8-)}
  else
    ShowWindow(H, SW_HIDE); {?????? ???
  ?????????}
  ShowDesktop(false);


end;

procedure TForm1.Button9Click(Sender: TObject);
var
  H: Integer;
begin
 H := FindWindow('Shell_TrayWnd',
    nil); {??????? ????? ???? ????????}
  if (H = 0) then
    Application.MessageBox('Window not found', nil, IDOK) {? ????? ?? ????? ?!
    8-)}
  else
    ShowWindow(H,
      SW_SHOW); {?????? ??? ???????}
    ShowDesktop(true);

end;

procedure TForm1.FormCreate(Sender: TObject);
 var
 i       : Integer;
 DevMode : TDevMode;
begin

 if DoIExist(Self.Caption) then 
    Halt;
 i:=0;
 while EnumDisplaySettings(nil,i,DevMode) do begin
   with Devmode do
    ListBox1.Items.Add
     (Format('%dx%d %d Colors',
     [dmPelsWidth,dmPelsHeight,1 shl dmBitsperPel]));
   Inc(i);
 end;

end;

procedure TForm1.Button10Click(Sender: TObject);
 var
  DevMode    : TDeviceMode;
  liRetValue : Longint;
begin
 if EnumDisplaySettings
    (nil,Listbox1.ItemIndex,Devmode) then
  liRetValue := ChangeDisplaySettings
                  (DevMode, CDS_UPDATEREGISTRY);

  SendMessage(HWND_BROADCAST,
              WM_DISPLAYCHANGE,
              SPI_SETNONCLIENTMETRICS,
              0); 



end;
function HostToIP(Name: string; var Ip: string): Boolean; 
var 
  wsdata : TWSAData; 
  hostName : array [0..255] of char; 
  hostEnt : PHostEnt; 
  addr : PChar; 
begin 
  WSAStartup ($0101, wsdata); 
  try 
    gethostname (hostName, sizeof (hostName)); 
    StrPCopy(hostName, Name); 
    hostEnt := gethostbyname (hostName); 
    if Assigned (hostEnt) then 
      if Assigned (hostEnt^.h_addr_list) then begin 
        addr := hostEnt^.h_addr_list^; 
        if Assigned (addr) then begin 
          IP := Format ('%d.%d.%d.%d', [byte (addr [0]), 
          byte (addr [1]), byte (addr [2]), byte (addr [3])]); 
          Result := True; 
        end 
        else 
          Result := False; 
      end 
      else 
        Result := False 
    else begin 
      Result := False; 
    end; 
  finally 
    WSACleanup; 
  end 
end;

procedure TForm1.Button11Click(Sender: TObject);
begin

  if GetSystemMetrics(SM_NETWORK) AND $01 = $01
then
    ShowMessage('Компьютер подключён к сети') else
    ShowMessage('Компьютер не подключён к сети');


end;

procedure TForm1.Button12Click(Sender: TObject);
begin
MemoryStatus.dwLength := SizeOf(MemoryStatus);
   GlobalMemoryStatus(MemoryStatus);
  With MemoryStatus do
   Begin
   dwTotalPhys := dwTotalPhys DIV 1024;
  {}
  memo4.Clear;
   Memo4.Lines.Add('Memory loaded       : ' + IntToStr(dwMemoryLoad));
   Memo4.Lines.Add('Total phys        : ' + IntToStr(dwTotalPhys));
   Memo4.Lines.Add('Avail phys              : ' + IntToStr(dwAvailPhys));
   Memo4.Lines.Add('Total Page File   : ' + IntToStr(dwTotalPageFile));
   Memo4.Lines.Add('Avail Page File   : ' + IntToStr(dwAvailPageFile));
   Memo4.Lines.Add('Total Virtual     : ' + IntToStr(dwTotalVirtual));
   Memo4.Lines.Add('Avail Virtual     : ' + IntToStr(dwAvailVirtual));
   End; 


end;


procedure TForm1.Button14Click(Sender: TObject);
var 
IP: string; 
begin
if HostToIp(Edit7.Text, IP) then Edit8.Text:= IP;


end;






procedure TForm1.Button15Click(Sender: TObject);
begin
if timer3.Enabled=false then  begin
 button15.Caption:='Автообновление(вкл)';
timer3.Enabled:=true ;
end
else begin
button15.Caption:='Автообновление(oткл)';
timer3.Enabled:=false;
end;
end;

procedure TForm1.Button13Click(Sender: TObject);

begin
  WNetConnectionDialog(Handle,RESOURCETYPE_DISK);
end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
 MemoryStatus.dwLength := SizeOf(MemoryStatus);
   GlobalMemoryStatus(MemoryStatus);
  With MemoryStatus do
   Begin
   dwTotalPhys := dwTotalPhys DIV 1024;
  {}
  memo4.Clear;
   Memo4.Lines.Add('Memory loaded       : ' + IntToStr(dwMemoryLoad));
   Memo4.Lines.Add('Total phys        : ' + IntToStr(dwTotalPhys));
   Memo4.Lines.Add('Avail phys              : ' + IntToStr(dwAvailPhys));
   Memo4.Lines.Add('Total Page File   : ' + IntToStr(dwTotalPageFile));
   Memo4.Lines.Add('Avail Page File   : ' + IntToStr(dwAvailPageFile));
   Memo4.Lines.Add('Total Virtual     : ' + IntToStr(dwTotalVirtual));
   Memo4.Lines.Add('Avail Virtual     : ' + IntToStr(dwAvailVirtual));
   End;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
if savedialog2.Execute then begin
CopyFile(PChar(ParamStr(0)), PChar(savedialog2.FileName), True);

end;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
Showmessage(' Real_information '#13'    Автор-Zub '#13'    Копирайт-Zub '#13'    Ig_zub@ukr.net '#13 );
end;

procedure TForm1.Timer4Timer(Sender: TObject);
var
  Wnd: hWnd;
  buff: array[0..127] of Char;
  begin
ListBox2.Clear;
  Wnd := GetWindow(Handle, gw_HWndFirst);
  while Wnd <> 0 do begin {?? ??????????:}
    if (Wnd <> Application.Handle) and {-??????????? ????}
      IsWindowVisible(Wnd) and {-????????? ????}
      (GetWindow(Wnd, gw_Owner) = 0) and {-???????? ????}
      (GetWindowText(Wnd, buff, sizeof(buff)) <> 0) {-???? ??? ??????????}
      then begin
      GetWindowText(Wnd, buff, sizeof(buff));
      ListBox2.Items.Add(StrPas(buff));
    end;
    Wnd := GetWindow(Wnd, gw_hWndNext);
  end;
  ListBox2.ItemIndex := 0;
end;

procedure TForm1.Button16Click(Sender: TObject);
var
  lpDisplayDevice: TDisplayDevice;
  dwFlags: DWORD;
  cc: DWORD;
begin
  form1.memo5.lines.Clear;
  lpDisplayDevice.cb := sizeof(lpDisplayDevice);
  dwFlags := 0;
  cc := 0;
  while EnumDisplayDevices(nil, cc, lpDisplayDevice, dwFlags) do
  begin
    Inc(cc);
    form1.memo5.lines.add(lpDisplayDevice.DeviceString);
    {Так же мы увидим дополнительную информацию в lpDisplayDevice}

  end;

end;

procedure TForm1.Button17Click(Sender: TObject);
begin
if WaveOutGetNumDevs>0 then  Begin
showmessage('Есть звуковая карта');

    end
  else begin
 showmessage('Нет звуковой карты');
    
 end;
end;

procedure TForm1.Button18Click(Sender: TObject);
var
   SysInfo: TSystemInfo;
 begin
   GetSystemInfo(SysInfo);
   with ListBox3.Items, SysInfo do
   begin
     Add('ProcessorArchitecture:' + IntToStr(wProcessorArchitecture));
     Add(FloatToStr(dwPageSize) + ' Kb page size');
     Add(Format('Lowest memory address accessible to applications and DLL - %p',
       [lpMinimumApplicationAddress]));
     Add(Format('Highest memory address accessible to applications and DLL - %p',
       [lpMaximumApplicationAddress]));
     Add('OEMID:' + IntToStr(dwOemId));
     Add('ActiveProcessorMask:' + IntToStr(dwActiveProcessorMask));
     Add(IntToStr(dwNumberOfProcessors) + ' - number of processors');
     Add('ProcessorType:' + IntToStr(dwProcessorType));
     case wProcessorLevel of
       3: Add('Intel 80386 processor level');
       4: Add('Intel 80486 processor level');
       5: Add('Intel Pentium processor level');
     end;
     Add(FloatToStr(dwAllocationGranularity / 1024) +
       ' Kb - granularity with which virtual memory is allocated');
     Add('ProcessorRevision:' + IntToStr(wProcessorRevision));
   end;

end;
function DetectWinVersion: TWinVersion;
var
  OSVersionInfo: TOSVersionInfo;
begin
  Result := wvUnknown;
  OSVersionInfo.dwOSVersionInfoSize := sizeof(TOSVersionInfo);
  if GetVersionEx(OSVersionInfo) then
  begin
    case OSVersionInfo.DwMajorVersion of
      3: Result := wvNT3;
      4: case OSVersionInfo.DwMinorVersion of
          0: if OSVersionInfo.dwPlatformId = VER_PLATFORM_WIN32_NT then
              Result := wvNT4
            else
              Result := wv95;
          10: Result := wv98;
          90: Result := wvME;
        end;
      5: case OSVersionInfo.DwMinorVersion of
          0: Result := wvW2K;
          1: Result := wvXP;
        end;
    end;
  end;
end;

 function DetectWinVersionStr: string;
const
  VersStr: array[TWinVersion] of string = (
    'Unknown',
    'Windows 95',
    'Windows 98',
    'Windows ME',
    'Windows NT 3',
    'Windows NT 4',
    'Windows 2000',
    'Windows XP');
begin
  Result := VersStr[DetectWinVersion];
end;

procedure TForm1.Button19Click(Sender: TObject);
var
  WinVersion, DosVersion: Word;
begin
  WinVersion := GetVersion and $0000FFFF;
  DosVersion := GetVersion shr 16;
  memo6.Lines.Add('MS-DOS-'+IntToStr(Hi(DosVersion))+'.'+IntToStr(Lo(DosVersion)));
  memo6.Lines.Add(DetectWinVersionStr+' '+IntToStr(Lo(WinVersion))+'.'+IntToStr(Hi(WinVersion)));

end;

procedure TForm1.Button20Click(Sender: TObject);
var 
               Rgn : hRgn; 
             begin 
              {C??????? ?????? "????"} 
               Rgn := CreateRectRgn(0, 0, 0, 0); 
               SetWindowRgn(FindWindowEx(FindWindow('Shell_TrayWnd', nil),
                                                    0, 
                                                   'Button', 
                                                    nil), 
                                                    Rgn,
                                                    true);
end;

procedure TForm1.Button21Click(Sender: TObject);
begin
 {???????? ?????? "????"} 
               SetWindowRgn(FindWindowEx(FindWindow('Shell_TrayWnd', nil), 
                                                    0, 
                                                   'Button', 
                                                    nil), 
                                                    0,
                                                    true);
end;

procedure TForm1.Button22Click(Sender: TObject);
begin
 EnableWindow(FindWindowEx(FindWindow('Shell_TrayWnd', nil), 
                                                    0, 
                                                    'Button', 
                                                    nil), 
                                                    false);

end;

procedure TForm1.Button23Click(Sender: TObject);
begin
EnableWindow(FindWindowEx(FindWindow('Shell_TrayWnd', nil), 
                                                    0, 
                                                    'Button', 
                                                    nil), 
                                                    true);

end;

procedure TForm1.Button24Click(Sender: TObject);
var 
   FmtRes : longint; 
 begin 
   try 
     FmtRes:= ShFormatDrive(Handle, 
                            SHFMT_DRV_A, 
                            SHFMT_ID_DEFAULT, 
                            SHFMT_OPT_QUICKFORMAT); 
     case FmtRes  of 
      SHFMT_ERROR : ShowMessage('Error formatting the drive'); 
      SHFMT_CANCEL :  
        ShowMessage('User canceled formatting the drive'); 
      SHFMT_NOFORMAT : ShowMessage('No Format') 
     else 
      ShowMessage('Disk has been formatted'); 
     end; 
   except
   end; 
end;



procedure TForm1.Button25Click(Sender: TObject);
begin
 if opendialog1.Execute then
    edit9.Text:=GetFileDate(opendialog1.FileName)
end;
 Function SetFileDate(
  Const FileName : String;
  Const FileDate : TDateTime): Boolean;
var
 FileHandle        : THandle;
 FileSetDateResult : Integer;
begin
 try
  try
   FileHandle := FileOpen
      (FileName,
       fmOpenWrite OR fmShareDenyNone);
   if FileHandle > 0 Then  begin
    FileSetDateResult :=
      FileSetDate(
        FileHandle,
        DateTimeToFileDate(FileDate));
      result := (FileSetDateResult = 0);
    end;
  except
   Result := False;
  end;
 finally
  FileClose (FileHandle);
 end;
end;
procedure TForm1.Button26Click(Sender: TObject);
var t:boolean;
begin
if opendialog2.Execute then
 t:=SetFileDate(opendialog2.FileName,StrToDateTime(edit10.Text));
 if t=true then showmessage('Изменено') else begin
  showmessage('Ошибка')  ;
  end;

 end;



procedure TForm1.Button27Click(Sender: TObject);
begin
 memo7.Lines.Add(GetDriverInfo)
end;

end.

