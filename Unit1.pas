unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
var a,b,c,d:integer;

implementation

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
begin
memo1.lines.clear;
memo2.lines.clear;
memo1.lines.LoadFromFile(getcurrentdir+'\deneme.txt');
end;

procedure TForm1.Button1Click(Sender: TObject);
var k,l,ln:integer;
t:string;
begin
for k:=0 to 10 do
begin
        if k<memo1.lines.count then
        begin
        t:=memo1.lines[k];
        if t[1]='L' then
        begin
                ln:=length(t);
                t:=copy(t,3,ln-2);
                l:=pos(',',t);
                a:=strtoint(copy(t,1,l-1));
                ln:=length(t);
                t:=copy(t,l+1,ln-2);
                l:=pos(',',t);
                b:=strtoint(copy(t,1,l-1));
                ln:=length(t);
                t:=copy(t,l+1,ln-2);
                l:=pos(',',t);
                c:=strtoint(copy(t,1,l-1));
                ln:=length(t);
                t:=copy(t,l+1,ln-2);
                d:=strtoint(t);
                image1.canvas.MoveTo(a,b);
                image1.canvas.lineTo(c,d);
                memo2.lines.add(inttostr(a)+' '+inttostr(b)+' '+inttostr(c)+' '+inttostr(d));
        end;
        end;
end;
end;

end.
