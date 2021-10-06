// 3D Lab -- Show selected object from specified eye coordinates.
//
// Copyright (C) 1997-1998 Earl F. Glynn, Overland Park, KS.
// All Rights Reserved.  E-Mail Address:  EarlGlynn@att.net

program ThreeDLab;

uses
  Forms,
  ScreenThreeDLab in 'ScreenThreeDLab.pas' {FormLab3D},
  DrawFigures in 'DrawFigures.pas',
  GraphicsMathLibrary in 'GraphicsMathLibrary.PAS',
  GraphicsPrimitivesLibrary in 'GraphicsPrimitivesLibrary.PAS';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TFormLab3D, FormLab3D);
  Application.Run;
end.
