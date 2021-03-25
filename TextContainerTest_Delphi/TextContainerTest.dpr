program TextContainerTest;

uses
  Forms,
  MainFormU in 'MainFormU.pas' {Form1},
  TextContainerU in '..\..\Source\TextContainerU.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

