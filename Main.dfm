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
    'function receiver(e) {'
    '/*'
    '  if (e.origin == '#39'https://example.com'#39') {'
    '    if (e.data == '#39'Hello world'#39') {'
    '      e.source.postMessage('#39'Hello'#39', e.origin);'
    '    } else {'
    '      alert(e.data);'
    '    }'
    '  }'
    '*/'
    
      '  window.ajaxRequest(MainForm.UniLabel1, '#39'myclickevent'#39', [], fal' +
      'se);'
    '  alert(e.data);'
    '  console.log(e.data);  '
    '}'
    'window.addEventListener('#39'message'#39', receiver, false);'
    'console.log('#39'Passou aki 1'#39');')
  MonitoredKeys.Keys = <>
  Movable = False
  ClientEvents.ExtEvents.Strings = (
    
      'viewport.show=function viewport.show(sender, eOpts)'#13#10'{'#13#10'//$(docu' +
      'ment).ready(function(){'#13#10'//   '#13#10'//   //$('#39'#content'#39').load("new.h' +
      'tml");'#13#10'   $('#39'#content'#39').load("/files/gentelella/production/logi' +
      'n.html");'#13#10'   console.log("Passou aki");'#13#10'//});'#13#10#13#10'}')
  OnAjaxEvent = UniFormAjaxEvent
  PixelsPerInch = 96
  TextHeight = 13
  object UniLabel1: TUniLabel
    Left = 0
    Top = 0
    Width = 400
    Height = 200
    Hint = ''
    Alignment = taCenter
    TextConversion = txtHTML
    AutoSize = False
    Caption = 
      '<iframe src=".\files\gentelella\production\login.html" width="10' +
      '0%" height="100%"/>'
    Align = alClient
    TabOrder = 0
    OnAjaxEvent = UniLabel1AjaxEvent
  end
end
