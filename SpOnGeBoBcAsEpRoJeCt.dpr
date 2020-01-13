program SpOnGeBoBcAsEpRoJeCt;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  sPoNgEbObCaSe in 'lib\sPoNgEbObCaSe.pas';

begin
  try
    Writeln('This is a SpongeBobCase Unit'.ToSpongeBobCase);
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
