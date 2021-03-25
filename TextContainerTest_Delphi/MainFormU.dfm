object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 458
  ClientWidth = 687
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 687
    Height = 458
    Align = alClient
    Lines.Strings = (
      'Memo1')
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object TextContainer: TTextContainer
    Lines.Strings = (
      '{+------------------------------------------------------------'
      ' | Unit Textcontainer'
      ' |'
      ' | Version: 1.0  Created: 12.03.99'
      ' |               Last Modified: 12.03.99'
      ' | Author : P. Below'
      ' | Project: Common components'
      ' | Description:'
      ' |   Implements a simple component to import textfiles into'
      ' |   a project at design-time via clipboard.'
      ' +------------------------------------------------------------}'
      ''
      '// http://www.delphigroups.info/2/2a/314010.html'
      ''
      '{$IFDEF FPC}'
      '{$ELSE}'
      '    {$I \pas-win\switches.inc}'
      '{$ENDIF}'
      ''
      'Unit TextContainerU;'
      ''
      'Interface'
      ''
      'Uses'
      '  SysUtils, Classes;'
      ''
      'Type'
      '  TTextContainer = Class(TComponent)'
      '  Private'
      '    { Private declarations }'
      '    FLines: TStrings;'
      ''
      '    Procedure SetLines( aList: TStrings );'
      '    Function GetText: String;'
      '  Public'
      '    { Public declarations }'
      '    Constructor Create( aOwner: TComponent ); override;'
      '    Destructor Destroy; override;'
      ''
      '    Property Text: String read GetText;'
      '  Published'
      '    { Published declarations }'
      '    Property Lines: TStrings read FLines write SetLines;'
      '  End;'
      ''
      'Procedure Register;'
      ''
      'Implementation'
      ''
      'Procedure Register;'
      'Begin'
      '  RegisterComponents('#39'Samples'#39', [TTextContainer]);'
      'End;'
      ''
      '{+---------------------------'
      ' | Methods of TTextContainer'
      ' +--------------------------}'
      'Procedure TTextContainer.SetLines( aList: TStrings );'
      '  Begin'
      '    FLines.Assign( aList );'
      '  End; { TTextContainer.SetLines }'
      ''
      'Function TTextContainer.GetText: String;'
      '  Begin'
      '    Result := FLines.Text;'
      '  End; { TTextContainer.GetText }'
      ''
      'Constructor TTextContainer.Create( aOwner: TComponent );'
      '  Begin'
      '    inherited Create( aOwner );'
      '    FLines := TStringlist.create;'
      '  End; { TTextContainer.Create }'
      ''
      'Destructor TTextContainer.Destroy;'
      '  Begin'
      '    FLines.Free;'
      '    inherited Destroy;'
      '  End; { TTextContainer.Destroy }'
      ''
      'End.')
    Left = 44
    Top = 16
  end
end
