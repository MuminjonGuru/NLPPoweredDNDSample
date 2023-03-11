unit DomainNameDiscovery.UnitMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Memo.Types,
  REST.Types, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope,
  FMX.StdCtrls, FMX.ScrollBox, FMX.Memo, FMX.Controls.Presentation, FMX.Edit;

type
  TFormMain = class(TForm)
    Edit1: TEdit;
    Memo1: TMemo;
    Button1: TButton;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    StyleBook1: TStyleBook;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.fmx}

uses
  System.JSON, System.Threading, System.Net.URLClient, System.Net.HttpClient,
  System.Net.HttpClientComponent;

procedure TFormMain.Button1Click(Sender: TObject);
begin
  var
  HTTP := TNetHTTPClient.Create(nil);
  try
    var
    Response := HTTP.Get
      ('https://api.apilayer.com/domain_discovery?apikey=QdSe87VnIPlTkpLrS5i46iVl8XJqlDlf&q='
      + Edit1.Text);

    Memo1.Lines.Add(Response.ContentAsString);
  finally
    HTTP.Free;
  end;
end;

end.
