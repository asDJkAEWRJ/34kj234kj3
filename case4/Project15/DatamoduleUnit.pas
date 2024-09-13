unit DataModuleUnit;

interface

uses
  Forms,
  SysUtils, Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule1 = class(TDataModule)
    ADOConnection1: TADOConnection;
  private
  public
  end;

  
implementation

{$R *.dfm}

uses Unit1, ServerController, UserSessionUnit;

end.
