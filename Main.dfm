object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 200
  ClientWidth = 400
  Caption = 'MainForm'
  Color = 710164266
  BorderStyle = bsNone
  WindowState = wsMaximized
  OldCreateOrder = False
  Script.Strings = (
    'function EfetuarLogin(e) {'
    '  FmePrincipal = document.getElementById('#39'FmePrincipal'#39');'
    
      '  EdtLogin = FmePrincipal.contentDocument.getElementById('#39'EdtLog' +
      'in'#39'); '
    
      '  EdtSenha = FmePrincipal.contentDocument.getElementById('#39'EdtSen' +
      'ha'#39');'
    '  '
    '  window.ajaxRequest('
    '    MainForm.LbFmePrincipal, '
    '    e.data, '
    '    ["psLogin=" + EdtLogin.value, '
    '     "psSenha=" + EdtSenha.value], '
    '    false);'
    '}'
    ''
    'function BindEvents(e) {'
    '/*'
    '  if (e.origin == '#39'https://example.com'#39') {'
    '    if (e.data == '#39'Hello world'#39') {'
    '      e.source.postMessage('#39'Hello'#39', e.origin);'
    '    } else {'
    '      alert(e.data);'
    '    }'
    '  }'
    '*/'
    '  if (e.data == '#39'EfetuarLogin'#39') {'
    '    EfetuarLogin(e);'
    '  }'
    ''
    '  //alert(e.data);'
    '  //console.log(e.data);  '
    '}'
    ''
    'window.addEventListener('#39'message'#39', BindEvents, false);'
    '//console.log('#39'Passou aki 1'#39');')
  MonitoredKeys.Keys = <>
  Movable = False
  ClientEvents.ExtEvents.Strings = (
    
      'viewport.show=function viewport.show(sender, eOpts)'#13#10'{'#13#10'//$(docu' +
      'ment).ready(function(){'#13#10'//   '#13#10'//   //$('#39'#content'#39').load("new.h' +
      'tml");'#13#10'   $('#39'#content'#39').load("/files/gentelella/production/logi' +
      'n.html");'#13#10'   console.log("Passou aki");'#13#10'//});'#13#10#13#10'}')
  PixelsPerInch = 96
  TextHeight = 13
  object LbFmePrincipal: TUniLabel
    Left = 0
    Top = 0
    Width = 400
    Height = 200
    Hint = ''
    Alignment = taCenter
    TextConversion = txtHTML
    AutoSize = False
    Caption = 
      '<iframe id="FmePrincipal" src="/files/gentelella/production/logi' +
      'n.html" width="100%" height="100%"/>'
    Align = alClient
    TabOrder = 0
    OnAjaxEvent = LbFmePrincipalAjaxEvent
  end
end
