object IWForm1: TIWForm1
  Left = 0
  Top = 0
  Width = 1038
  Height = 606
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  BGColor = clGradientInactiveCaption
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 8
  DesignTop = -37
  object IWButton1: TIWButton
    Left = 363
    Top = 325
    Width = 75
    Height = 25
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    Caption = #1055#1086#1082#1072#1079#1072#1090#1100
    DoSubmitValidation = True
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    ScriptEvents = <>
    TabOrder = 0
    OnClick = IWButton1Click
  end
  object IWDBGrid1: TIWDBGrid
    Left = 71
    Top = 3
    Width = 850
    Height = 265
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    BorderColors.Color = clNone
    BorderColors.Light = clNone
    BorderColors.Dark = clNone
    BGColor = clWebWHITE
    BorderSize = 1
    BorderStyle = tfDefault
    Caption = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077' '#1075#1088#1091#1087#1087
    CellPadding = 0
    CellSpacing = 0
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FrameBuffer = 40
    Lines = tlAll
    UseFrame = True
    UseSize = True
    ScrollToCurrentRow = False
    Columns = <>
    DataSource = dsGrup
    FooterRowCount = 0
    FriendlyName = 'IWDBGrid1'
    FromStart = True
    HighlightColor = clNone
    HighlightRows = False
    Options = [dgShowTitles]
    RefreshMode = rmAutomatic
    RowLimit = 0
    RollOver = False
    RowClick = False
    RollOverColor = clNone
    RowHeaderColor = clNone
    RowAlternateColor = clNone
    RowCurrentColor = clNone
    TabOrder = -1
  end
  object IWDBGrid2: TIWDBGrid
    Left = 71
    Top = 356
    Width = 586
    Height = 192
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    BorderColors.Color = clNone
    BorderColors.Light = clNone
    BorderColors.Dark = clNone
    BGColor = clWebWHITE
    BorderSize = 1
    BorderStyle = tfDefault
    Caption = #1058#1091#1088#1080#1089#1090#1099' '#1074' '#1075#1088#1091#1087#1087#1077
    CellPadding = 0
    CellSpacing = 0
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FrameBuffer = 40
    Lines = tlAll
    UseFrame = True
    UseSize = True
    ScrollToCurrentRow = False
    Columns = <>
    DataSource = dsOtbor
    FooterRowCount = 0
    FriendlyName = 'IWDBGrid2'
    FromStart = True
    HighlightColor = clNone
    HighlightRows = False
    Options = [dgShowTitles]
    RefreshMode = rmAutomatic
    RowLimit = 0
    RollOver = False
    RowClick = False
    RollOverColor = clNone
    RowHeaderColor = clNone
    RowAlternateColor = clNone
    RowCurrentColor = clNone
    TabOrder = -1
  end
  object lcbOt: TIWDBLookupComboBox
    Left = 71
    Top = 326
    Width = 286
    Height = 21
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    BGColor = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FocusColor = clNone
    AutoHideOnMenuActivation = False
    ItemsHaveValues = False
    NoSelectionText = '-- No Selection --'
    Required = False
    RequireSelection = True
    ScriptEvents = <>
    OnChange = lcbOtChange
    UseSize = True
    Style = stNormal
    ButtonColor = clBtnFace
    DoSubmitValidation = True
    Editable = True
    NonEditableAsLabel = True
    SubmitOnAsyncEvent = True
    TabOrder = 1
    AutoEditable = False
    FriendlyName = 'lcbOt'
    KeyField = 'id'
    ListField = #1053#1072#1079#1074#1072#1085#1080#1077'_'#1075#1088#1091#1087#1087#1099
    ListSource = dsGrup
    DisableWhenEmpty = True
  end
  object IWLabel1: TIWLabel
    Left = 447
    Top = 334
    Width = 192
    Height = 16
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = #1050#1086#1083#1080#1095#1077#1089#1080#1074#1086' '#1095#1077#1083#1086#1074#1077#1082' '#1074' '#1075#1088#1091#1087#1087#1077
    RawText = False
  end
  object lkol: TIWLabel
    Left = 645
    Top = 325
    Width = 12
    Height = 25
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clNone
    Font.Size = 16
    Font.Style = []
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    FriendlyName = 'lkol'
    Caption = '0'
    RawText = False
  end
  object IWLabel3: TIWLabel
    Left = 71
    Top = 304
    Width = 303
    Height = 16
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    FriendlyName = 'IWLabel3'
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1075#1088#1091#1087#1087#1091', '#1095#1090#1086#1073#1099' '#1087#1086#1089#1084#1086#1090#1088#1077#1090#1100' '#1077#1077' '#1089#1086#1089#1090#1072#1074
    RawText = False
  end
  object IWDBGrid3: TIWDBGrid
    Left = 680
    Top = 356
    Width = 241
    Height = 192
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    BorderColors.Color = clNone
    BorderColors.Light = clNone
    BorderColors.Dark = clNone
    BGColor = clWebWHITE
    BorderSize = 1
    BorderStyle = tfDefault
    Caption = #1057#1086#1089#1090#1072#1074' '#1084#1072#1088#1096#1088#1091#1090#1072
    CellPadding = 0
    CellSpacing = 0
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FrameBuffer = 40
    Lines = tlAll
    UseFrame = True
    UseSize = True
    ScrollToCurrentRow = False
    Columns = <>
    DataSource = dsOtbor1
    FooterRowCount = 0
    FriendlyName = 'IWDBGrid3'
    FromStart = True
    HighlightColor = clNone
    HighlightRows = False
    Options = [dgShowTitles]
    RefreshMode = rmAutomatic
    RowLimit = 0
    RollOver = False
    RowClick = False
    RollOverColor = clNone
    RowHeaderColor = clNone
    RowAlternateColor = clNone
    RowCurrentColor = clNone
    TabOrder = -1
  end
  object lcbOt1: TIWDBLookupComboBox
    Left = 680
    Top = 325
    Width = 241
    Height = 21
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    BGColor = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FocusColor = clNone
    AutoHideOnMenuActivation = False
    ItemsHaveValues = False
    NoSelectionText = '-- No Selection --'
    Required = False
    RequireSelection = True
    ScriptEvents = <>
    OnChange = lcbOt1Change
    UseSize = True
    Style = stNormal
    ButtonColor = clBtnFace
    DoSubmitValidation = True
    Editable = True
    NonEditableAsLabel = True
    SubmitOnAsyncEvent = True
    TabOrder = 2
    AutoEditable = False
    FriendlyName = 'lcbOt'
    KeyField = 'id'
    ListField = #1053#1072#1079#1074#1072#1085#1080#1077
    ListSource = dsMarsh
    DisableWhenEmpty = True
  end
  object IWLabel2: TIWLabel
    Left = 680
    Top = 303
    Width = 239
    Height = 16
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    FriendlyName = 'IWLabel3'
    Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1074#1099#1073#1088#1072#1085#1085#1086#1084' '#1084#1072#1088#1096#1088#1091#1090#1077
    RawText = False
  end
  object lInf: TIWLabel
    Left = 680
    Top = 554
    Width = 82
    Height = 16
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    FriendlyName = 'lInf'
    Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103
    RawText = False
  end
  object atGrup: TADOTable
    Active = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog='#1055#1091#1090#1077#1096#1077#1089#1090#1074#1080#1103';Data Source=SVETA'
    CursorType = ctStatic
    TableName = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077#1043#1088#1091#1087#1087
    Left = 736
    Top = 24
    object atGrupid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
      Visible = False
    end
    object atGrupНазвание_группы: TStringField
      FieldName = #1053#1072#1079#1074#1072#1085#1080#1077'_'#1075#1088#1091#1087#1087#1099
      Size = 50
    end
    object atGrupMarsh: TStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077' '#1084#1072#1088#1096#1088#1091#1090#1072
      FieldKind = fkLookup
      FieldName = #1053#1072#1079#1074#1072#1085#1080#1077#1052#1072#1088#1096#1088#1091#1090#1072
      LookupDataSet = atMarsh
      LookupKeyFields = 'id'
      LookupResultField = #1053#1072#1079#1074#1072#1085#1080#1077
      KeyFields = #1052#1072#1088#1096#1088#1091#1090
      Lookup = True
    end
    object atGrupМаршрут: TIntegerField
      FieldName = #1052#1072#1088#1096#1088#1091#1090
      Visible = False
    end
    object atGrupДата_отправления: TWideStringField
      FieldName = #1044#1072#1090#1072'_'#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
      Size = 10
    end
    object atGrupPerevoz: TStringField
      DisplayLabel = #1055#1077#1088#1077#1074#1086#1079#1095#1080#1082
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'Perevoz'
      LookupDataSet = atPerevoz
      LookupKeyFields = 'id'
      LookupResultField = #1053#1072#1079#1074#1072#1085#1080#1077
      KeyFields = #1055#1077#1088#1077#1074#1086#1079#1095#1080#1082
      Lookup = True
    end
    object atGrupПеревозчик: TIntegerField
      FieldName = #1055#1077#1088#1077#1074#1086#1079#1095#1080#1082
      Visible = False
    end
  end
  object dsGrup: TDataSource
    DataSet = atGrup
    Left = 776
    Top = 24
  end
  object atTur: TADOTable
    Active = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog='#1055#1091#1090#1077#1096#1077#1089#1090#1074#1080#1103';Data Source=SVETA'
    CursorType = ctStatic
    TableName = #1058#1091#1088#1080#1089#1090#1099
    Left = 736
    Top = 80
    object atTurid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object atTurФИО: TStringField
      FieldName = #1060#1048#1054
      Size = 100
    end
    object atTurДокумент: TStringField
      FieldName = #1044#1086#1082#1091#1084#1077#1085#1090
      Size = 300
    end
    object atTurДата_рождения: TWideStringField
      FieldName = #1044#1072#1090#1072'_'#1088#1086#1078#1076#1077#1085#1080#1103
      Size = 10
    end
    object atTurГруппа: TIntegerField
      FieldName = #1043#1088#1091#1087#1087#1072
    end
  end
  object dsTur: TDataSource
    DataSet = atTur
    Left = 776
    Top = 80
  end
  object atMarsh: TADOTable
    Active = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog='#1055#1091#1090#1077#1096#1077#1089#1090#1074#1080#1103';Data Source=SVETA'
    CursorType = ctStatic
    TableName = #1052#1072#1088#1096#1088#1091#1090#1099
    Left = 736
    Top = 136
    object atMarshid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object atMarshНазвание: TStringField
      FieldName = #1053#1072#1079#1074#1072#1085#1080#1077
      Size = 50
    end
    object atMarshВид: TStringField
      FieldName = #1042#1080#1076
      Size = 50
    end
    object atMarshОписание: TMemoField
      FieldName = #1054#1087#1080#1089#1072#1085#1080#1077
      BlobType = ftMemo
    end
    object atMarshЦена: TBCDField
      FieldName = #1062#1077#1085#1072
      Precision = 19
    end
  end
  object dsMarsh: TDataSource
    DataSet = atMarsh
    Left = 776
    Top = 136
  end
  object atPerevoz: TADOTable
    Active = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog='#1055#1091#1090#1077#1096#1077#1089#1090#1074#1080#1103';Data Source=SVETA'
    CursorType = ctStatic
    TableName = #1055#1077#1088#1077#1074#1086#1079#1095#1080#1082
    Left = 736
    Top = 192
  end
  object dsPerevoz: TDataSource
    DataSet = atPerevoz
    Left = 776
    Top = 192
  end
  object aqOtbor: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog='#1055#1091#1090#1077#1096#1077#1089#1090#1074#1080#1103';Data Source=SVETA'
    CursorType = ctStatic
    Filtered = True
    Parameters = <
      item
        Name = #1053#1072#1079#1074#1072#1085#1080#1077
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT        '#1058#1091#1088#1080#1089#1090#1099'.'#1060#1048#1054', '#1058#1091#1088#1080#1089#1090#1099'.'#1044#1072#1090#1072'_'#1088#1086#1078#1076#1077#1085#1080#1103', '#1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077#1043#1088 +
        #1091#1087#1087'.'#1053#1072#1079#1074#1072#1085#1080#1077'_'#1075#1088#1091#1087#1087#1099
      'FROM          '#1058#1091#1088#1080#1089#1090#1099' INNER JOIN'
      
        '                    '#1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077#1043#1088#1091#1087#1087' ON '#1058#1091#1088#1080#1089#1090#1099'.'#1043#1088#1091#1087#1087#1072' = '#1060#1086#1088#1084#1080#1088 +
        #1086#1074#1072#1085#1080#1077#1043#1088#1091#1087#1087'.id'
      ''
      'WHERE        '#1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077#1043#1088#1091#1087#1087'.'#1053#1072#1079#1074#1072#1085#1080#1077'_'#1075#1088#1091#1087#1087#1099' LIKE :'#1053#1072#1079#1074#1072#1085#1080#1077
      ''
      'ORDER BY '#1058#1091#1088#1080#1089#1090#1099'.'#1060#1048#1054
      ''
      '')
    Left = 744
    Top = 240
    object aqOtborФИО: TStringField
      FieldName = #1060#1048#1054
      Size = 100
    end
    object aqOtborДата_рождения: TWideStringField
      FieldName = #1044#1072#1090#1072'_'#1088#1086#1078#1076#1077#1085#1080#1103
      Size = 10
    end
    object aqOtborНазвание_группы: TStringField
      FieldName = #1053#1072#1079#1074#1072#1085#1080#1077'_'#1075#1088#1091#1087#1087#1099
      Size = 50
    end
  end
  object dsOtbor: TDataSource
    DataSet = aqOtbor
    Left = 784
    Top = 240
  end
  object aqOtbor1: TADOQuery
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog='#1055#1091#1090#1077#1096#1077#1089#1090#1074#1080#1103';Data Source=SVETA'
    CursorType = ctStatic
    Filtered = True
    Parameters = <
      item
        Name = #1052#1072#1088#1096
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT        '#1052#1072#1088#1096#1088#1091#1090#1099'.'#1053#1072#1079#1074#1072#1085#1080#1077', '#1043#1086#1088#1086#1076#1072'.'#1043#1086#1088#1086#1076', '#1043#1086#1088#1086#1076#1072#1044#1083#1103#1055#1086#1089#1077#1097#1077#1085#1080 +
        #1103'.'#1043#1086#1088#1086#1076#1055#1086#1089#1077#1097#1077#1085#1080#1103', '#1043#1086#1088#1086#1076#1072#1044#1083#1103#1055#1086#1089#1077#1097#1077#1085#1080#1103'.'#1052#1072#1088#1096#1088#1091#1090', '#1052#1072#1088#1096#1088#1091#1090#1099'.'#1042#1080#1076', '#1052#1072#1088#1096 +
        #1088#1091#1090#1099'.'#1062#1077#1085#1072
      'FROM            '#1043#1086#1088#1086#1076#1072#1044#1083#1103#1055#1086#1089#1077#1097#1077#1085#1080#1103' INNER JOIN'
      
        '                         '#1052#1072#1088#1096#1088#1091#1090#1099' ON '#1043#1086#1088#1086#1076#1072#1044#1083#1103#1055#1086#1089#1077#1097#1077#1085#1080#1103'.'#1052#1072#1088#1096#1088#1091#1090' ' +
        '= '#1052#1072#1088#1096#1088#1091#1090#1099'.id INNER JOIN'
      
        '                         '#1043#1086#1088#1086#1076#1072' ON '#1043#1086#1088#1086#1076#1072#1044#1083#1103#1055#1086#1089#1077#1097#1077#1085#1080#1103'.'#1043#1086#1088#1086#1076#1055#1086#1089#1077#1097 +
        #1077#1085#1080#1103' = '#1043#1086#1088#1086#1076#1072'.id'
      'WHERE        '#1052#1072#1088#1096#1088#1091#1090#1099'.'#1053#1072#1079#1074#1072#1085#1080#1077' LIKE :'#1052#1072#1088#1096)
    Left = 832
    Top = 240
    object aqOtbor1Название: TStringField
      FieldName = #1053#1072#1079#1074#1072#1085#1080#1077
      Visible = False
      Size = 50
    end
    object aqOtbor1Город: TStringField
      FieldName = #1043#1086#1088#1086#1076
      Size = 50
    end
    object aqOtbor1ГородПосещения: TIntegerField
      FieldName = #1043#1086#1088#1086#1076#1055#1086#1089#1077#1097#1077#1085#1080#1103
      Visible = False
    end
    object aqOtbor1Маршрут: TIntegerField
      FieldName = #1052#1072#1088#1096#1088#1091#1090
      Visible = False
    end
    object aqOtbor1Вид: TStringField
      FieldName = #1042#1080#1076
      Visible = False
      Size = 50
    end
    object aqOtbor1Цена: TBCDField
      FieldName = #1062#1077#1085#1072
      Visible = False
      Precision = 19
    end
  end
  object dsOtbor1: TDataSource
    DataSet = aqOtbor1
    Left = 872
    Top = 240
  end
  object atGorP: TADOTable
    Active = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog='#1055#1091#1090#1077#1096#1077#1089#1090#1074#1080#1103';Data Source=SVETA'
    CursorType = ctStatic
    TableName = #1043#1086#1088#1086#1076#1072#1044#1083#1103#1055#1086#1089#1077#1097#1077#1085#1080#1103
    Left = 824
    Top = 192
    object atGorPid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object atGorPГородПосещения: TIntegerField
      FieldName = #1043#1086#1088#1086#1076#1055#1086#1089#1077#1097#1077#1085#1080#1103
    end
    object atGorPМаршрут: TIntegerField
      FieldName = #1052#1072#1088#1096#1088#1091#1090
    end
  end
  object dsGorP: TDataSource
    DataSet = atGorP
    Left = 864
    Top = 192
  end
  object dsGoroda: TDataSource
    DataSet = atGoroda
    Left = 880
    Top = 136
  end
  object atGoroda: TADOTable
    Active = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog='#1055#1091#1090#1077#1096#1077#1089#1090#1074#1080#1103';Data Source=SVETA'
    CursorType = ctStatic
    TableName = #1043#1086#1088#1086#1076#1072
    Left = 840
    Top = 136
    object atGorodaid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object atGorodaГород: TStringField
      FieldName = #1043#1086#1088#1086#1076
      Size = 50
    end
  end
end
