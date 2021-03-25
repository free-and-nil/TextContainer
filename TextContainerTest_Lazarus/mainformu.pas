unit MainFormU;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls,
  TextContainerU;

type

  { TForm1 }

  TForm1 = class(TForm)
    Memo1: TMemo;
    TextContainer1: TTextContainer;
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
 	Memo1.Lines.Assign (TextContainer1.Lines);
end;

end.

