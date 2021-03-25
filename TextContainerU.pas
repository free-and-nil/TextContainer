{+------------------------------------------------------------
 | Unit Textcontainer
 |
 | Version: 1.0  Created: 12.03.99
 |               Last Modified: 12.03.99
 | Author : P. Below
 | Project: Common components
 | Description:
 |   Implements a simple component to import textfiles into
 |   a project at design-time via clipboard.
 |
 | http://www.delphigroups.info/2/2a/314010.html
 +------------------------------------------------------------}

{$IFDEF FPC}
	{$mode delphi}{$H+}
{$ELSE}
    {$I \pas-win\switches.inc}
{$ENDIF}

Unit TextContainerU;

Interface

Uses
  SysUtils, Classes;

Type
  TTextContainer = Class(TComponent)
  Private
    { Private declarations }
    FLines: TStrings;

    Procedure SetLines( aList: TStrings );
    Function GetText: String;
  Public
    { Public declarations }
    Constructor Create( aOwner: TComponent ); override;
    Destructor Destroy; override;

    Property Text: String read GetText;
  Published
    { Published declarations }
    Property Lines: TStrings read FLines write SetLines;
  End;

Procedure Register;

Implementation

{$IFDEF FPC}
uses LResources;
{$ENDIF}

Procedure Register;
Begin
  RegisterComponents('Samples', [TTextContainer]);
End;

{+---------------------------
 | Methods of TTextContainer
 +--------------------------}
Procedure TTextContainer.SetLines( aList: TStrings );
  Begin
    FLines.Assign( aList );
  End; { TTextContainer.SetLines }

Function TTextContainer.GetText: String;
  Begin
    Result := FLines.Text;
  End; { TTextContainer.GetText }

Constructor TTextContainer.Create( aOwner: TComponent );
  Begin
    inherited Create( aOwner );
    FLines := TStringlist.create;
  End; { TTextContainer.Create }

Destructor TTextContainer.Destroy;
  Begin
    FLines.Free;
    inherited Destroy;
  End; { TTextContainer.Destroy }

{$IFDEF FPC}
initialization
	{$I textcontainer.lrs}
{$ENDIF}

End.
