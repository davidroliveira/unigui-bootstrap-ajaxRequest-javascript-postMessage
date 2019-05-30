unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniEdit,
  uniLabel, uniButton, uniPanel, uniHTMLFrame;

type
  TMainForm = class(TUniForm)
    UniLabel1: TUniLabel;
    procedure UniLabel1AjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure UniFormAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniFormAjaxEvent(Sender: TComponent; EventName: string;
  Params: TUniStrings);
begin
//
end;

procedure TMainForm.UniLabel1AjaxEvent(Sender: TComponent; EventName: string;
  Params: TUniStrings);
begin
  ShowMessage('Mensagem Delphi');
//window.ajaxRequest(MainForm.UniHTMLFrame1, 'myclickevent', [], false);
//window.ajaxRequest(MainForm.UniLabel1, 'myclickevent', [], false);

//function receiver(e) {
///*
//  if (e.origin == 'https://example.com') {
//    if (e.data == 'Hello world') {
//      e.source.postMessage('Hello', e.origin);
//    } else {
//      alert(e.data);
//    }
//  }
//*/
//  window.ajaxRequest(MainForm.UniLabel1, 'myclickevent', [], false);
//  alert(e.data);
//  console.log(e.data);
//}
//window.addEventListener('message', receiver, false);
//console.log('Passou aki 1');

//parent.postMessage("Teste do David", "*");

//https://html.spec.whatwg.org/multipage/web-messaging.html#web-messaging
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
