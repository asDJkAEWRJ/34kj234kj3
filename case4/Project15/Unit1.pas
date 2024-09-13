unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton,
  IWCompGrids, IWDBGrids, Datasnap.Provider, Data.DB, Data.Win.ADODB,
  IWCompLabel, IWCompListbox, IWDBStdCtrls;

type
  TIWForm1 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWDBGrid1: TIWDBGrid;
    atGrup: TADOTable;
    dsGrup: TDataSource;
    atGrupid: TAutoIncField;
    atGrupНазвание_группы: TStringField;
    atGrupПеревозчик: TIntegerField;
    atGrupДата_отправления: TWideStringField;
    atGrupМаршрут: TIntegerField;
    atTur: TADOTable;
    dsTur: TDataSource;
    IWDBGrid2: TIWDBGrid;
    atTurid: TAutoIncField;
    atTurФИО: TStringField;
    atTurДокумент: TStringField;
    atTurДата_рождения: TWideStringField;
    atTurГруппа: TIntegerField;
    atMarsh: TADOTable;
    dsMarsh: TDataSource;
    atMarshid: TAutoIncField;
    atMarshНазвание: TStringField;
    atMarshВид: TStringField;
    atMarshОписание: TMemoField;
    atMarshЦена: TBCDField;
    atPerevoz: TADOTable;
    dsPerevoz: TDataSource;
    aqOtbor: TADOQuery;
    dsOtbor: TDataSource;
    aqOtborФИО: TStringField;
    aqOtborДата_рождения: TWideStringField;
    aqOtborНазвание_группы: TStringField;
    lcbOt: TIWDBLookupComboBox;
    IWLabel1: TIWLabel;
    lkol: TIWLabel;
    IWLabel3: TIWLabel;
    atGrupPerevoz: TStringField;
    atGrupMarsh: TStringField;
    aqOtbor1: TADOQuery;
    dsOtbor1: TDataSource;
    IWDBGrid3: TIWDBGrid;
    lcbOt1: TIWDBLookupComboBox;
    atGorP: TADOTable;
    dsGorP: TDataSource;
    atGorPid: TAutoIncField;
    atGorPГородПосещения: TIntegerField;
    atGorPМаршрут: TIntegerField;
    IWLabel2: TIWLabel;
    dsGoroda: TDataSource;
    atGoroda: TADOTable;
    atGorodaid: TAutoIncField;
    atGorodaГород: TStringField;
    aqOtbor1Название: TStringField;
    aqOtbor1Город: TStringField;
    aqOtbor1ГородПосещения: TIntegerField;
    aqOtbor1Маршрут: TIntegerField;
    aqOtbor1Вид: TStringField;
    aqOtbor1Цена: TBCDField;
    lInf: TIWLabel;
    procedure IWButton1Click(Sender: TObject);

    procedure lcbOtChange(Sender: TObject);
    procedure lcbOt1Change(Sender: TObject);

  public
  end;

implementation

{$R *.dfm}

uses DatamoduleUnit, ServerController, UserSessionUnit;

procedure TIWForm1.IWButton1Click(Sender: TObject);
begin
   aqOtbor.Active:= False;
   aqOtbor.Parameters.ParamByName('Название').Value:= lcbOt.Text;
   aqOtbor.Active:=true;
   lkol.Caption:= IntToStr(aqOtbor.RecordCount);
end;


procedure TIWForm1.lcbOt1Change(Sender: TObject);
begin
   lInf.Caption:= '';
   aqOtbor1.Active:= False;
   aqOtbor1.Parameters.ParamByName('Марш').Value:= lcbOt1.Text;
   aqOtbor1.Active:=true;
   lInf.Caption:= lInf.Caption + ': вид поездки - ' + aqOtbor1Вид.Text + ', Цена ' + aqOtbor1Цена.Text + ' руб.';
end;

procedure TIWForm1.lcbOtChange(Sender: TObject);
begin
   aqOtbor.Active:= False;
   aqOtbor.Parameters.ParamByName('Название').Value:= lcbOt.Text;
   aqOtbor.Active:=true;

end;

initialization
  TIWForm1.SetAsMainForm;

end.
