unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    RechnenButtonClick: TButton;
    LaengeEdit: TEdit;
    BreiteEdit: TEdit;
    FlaecheEdit: TEdit;
    UmfangEdit: TEdit;
    DiagonaleEdit: TEdit;
    Label1: TLabel;
    Label10: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure RechnenButtonClickClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  close;
end;
procedure TForm1.RechnenButtonClickClick(Sender: TObject);
var laenge,breite,flaeche,umfang,diagonale: Double;
begin
//Eingabe
laenge:= StrToFloat (LaengeEdit.Text);
breite:= StrToFloat (BreiteEdit.Text);
//Vearbeitung
flaeche:=laenge*breite;
umfang:=2*laenge+ 2*breite;
diagonale:=sqrt(laenge*laenge+breite*breite);
//Ausgabe
FlaecheEdit.Text:=FloatToStrF(flaeche,ffFixed,10,2);
UmfangEdit.Text:=FloatToStrF(umfang,ffFixed,10,2);
DiagonaleEdit.Text:=FloatToStrF(Diagonale,ffFixed,10,2);
end;


end.



