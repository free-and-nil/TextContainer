unit MainFormU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TextContainerU, StdCtrls;

type
  TForm1 = class(TForm)
    TextContainer: TTextContainer;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
    Memo1.Lines.Assign (TextContainer.Lines);
end;

end.

