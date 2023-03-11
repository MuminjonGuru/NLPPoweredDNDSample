program DomainNameDiscovery;

uses
  System.StartUpCopy,
  FMX.Forms,
  DomainNameDiscovery.UnitMain in 'DomainNameDiscovery.UnitMain.pas' {FormMain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
