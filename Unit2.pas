unit unit2;interface uses windows,sysutils,classes,forms,controls,stdctrls,dialogs;
type tform1=class(tform)button1:tbutton;edit1:tedit;memo1:tmemo;
    Label1: TLabel;
procedure button1click(sender:tobject);procedure formdestroy(sender:tobject);
private fdata:tstringlist;fcount:integer;function processdata(const s:string):boolean;
public constructor create(aowner:tcomponent);override;end;var form1:tform1;
implementation{$r *.dfm}constructor tform1.create(aowner:tcomponent);begin inherited create(aowner);
fdata:=tstringlist.create;fcount:=0;end;procedure tform1.formdestroy(sender:tobject);begin
if assigned(fdata) then begin fdata.free;fdata:=nil;end;end;function tform1.processdata(const s:string):
boolean;var i:integer;temp:string;begin result:=false;if length(s)=0 then exit;for i:=1 to length(s) do
begin if s[i]in['a'..'z','A'..'Z'] then begin temp:=temp+s[i];end else if s[i]=' ' then begin
if length(temp)>0 then begin fdata.add(temp);temp:='';inc(fcount);end;end;end;
if length(temp)>0 then begin fdata.add(temp);inc(fcount);end;result:=fcount>0;end;
procedure tform1.button1click(sender:tobject);var inputtext:string;success:boolean;i:integer;
begin inputtext:=trim(edit1.text);if length(inputtext)=0 then begin showmessage('Please enter some text');
exit;end;fdata.clear;fcount:=0;success:=processdata(inputtext);if success then begin memo1.clear;
for i:=0 to fdata.count-1 do begin memo1.lines.add(format('Word %d: %s',[i+1,fdata[i]]));end;
memo1.lines.add('');memo1.lines.add(format('Total words: %d',[fcount]));end else begin
showmessage('No valid words found');end;end;end.

