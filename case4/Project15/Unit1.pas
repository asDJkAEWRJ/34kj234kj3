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
    atGrup��������_������: TStringField;
    atGrup����������: TIntegerField;
    atGrup����_�����������: TWideStringField;
    atGrup�������: TIntegerField;
    atTur: TADOTable;
    dsTur: TDataSource;
    IWDBGrid2: TIWDBGrid;
    atTurid: TAutoIncField;
    atTur���: TStringField;
    atTur��������: TStringField;
    atTur����_��������: TWideStringField;
    atTur������: TIntegerField;
    atMarsh: TADOTable;
    dsMarsh: TDataSource;
    atMarshid: TAutoIncField;
    atMarsh��������: TStringField;
    atMarsh���: TStringField;
    atMarsh��������: TMemoField;
    atMarsh����: TBCDField;
    atPerevoz: TADOTable;
    dsPerevoz: TDataSource;
    aqOtbor: TADOQuery;
    dsOtbor: TDataSource;
    aqOtbor���: TStringField;
    aqOtbor����_��������: TWideStringField;
    aqOtbor��������_������: TStringField;
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
    atGorP��������������: TIntegerField;
    atGorP�������: TIntegerField;
    IWLabel2: TIWLabel;
    dsGoroda: TDataSource;
    atGoroda: TADOTable;
    atGorodaid: TAutoIncField;
    atGoroda�����: TStringField;
    aqOtbor1��������: TStringField;
    aqOtbor1�����: TStringField;
    aqOtbor1��������������: TIntegerField;
    aqOtbor1�������: TIntegerField;
    aqOtbor1���: TStringField;
    aqOtbor1����: TBCDField;
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
   aqOtbor.Parameters.ParamByName('��������').Value:= lcbOt.Text;
   aqOtbor.Active:=true;
   lkol.Caption:= IntToStr(aqOtbor.RecordCount);
end;


procedure TIWForm1.lcbOt1Change(Sender: TObject);
begin
   lInf.Caption:= '';
   aqOtbor1.Active:= False;
   aqOtbor1.Parameters.ParamByName('����').Value:= lcbOt1.Text;
   aqOtbor1.Active:=true;
   lInf.Caption:= lInf.Caption + ': ��� ������� - ' + aqOtbor1���.Text + ', ���� ' + aqOtbor1����.Text + ' ���.';
end;

procedure TIWForm1.lcbOtChange(Sender: TObject);
begin
   aqOtbor.Active:= False;
   aqOtbor.Parameters.ParamByName('��������').Value:= lcbOt.Text;
   aqOtbor.Active:=true;

end;

initialization
  TIWForm1.SetAsMainForm;

end.
