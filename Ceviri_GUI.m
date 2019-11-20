function varargout = Ceviri_GUI(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Ceviri_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @Ceviri_GUI_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end




function Ceviri_GUI_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;


guidata(hObject, handles);



function varargout = Ceviri_GUI_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;



function pushbutton1_Callback(hObject, eventdata, handles)
load('data.mat');
adet=length(harf);
Random=ceil(adet*rand(1));
ENG=harf(Random,1);
ENG=char(ENG);
set(handles.edit1,'String',[]);
set(handles.text3,'visible','on');
set(handles.text5,'visible','on');
set(handles.text19,'visible','off');
set(handles.text2,'String',ENG);
set(handles.text3,'String','');
set(handles.text5,'String','');
save data Random harf ENG adet true false empty DOGRU



function pushbutton2_Callback(hObject, eventdata, handles)
load('data.mat');
TUR=get(handles.edit1,'String');
TUR=char(TUR);
DOGRU=harf(Random,2);
DOGRU=char(DOGRU);
    if strcmp(DOGRU,TUR)==1 
    set(handles.text3,'visible','on');
    set(handles.text5,'visible','off');
    set(handles.text19,'visible','off');
    set(handles.text3,'String','DOÐRU');
    set(handles.edit1,'String','');
    true=true+1;
    else
       set(handles.edit1,'String',[]); 
           set(handles.text3,'visible','off');
            set(handles.text5,'visible','on');
            set(handles.text19,'visible','off');
        set(handles.text5,'String',DOGRU);
     false=false+1;
    end
save data Random harf ENG adet true false empty DOGRU

function pushbutton3_Callback(hObject, eventdata, handles)
load('data.mat');

set(handles.pushbutton3,'visible','off');
set(handles.pushbutton1,'visible','off');
set(handles.pushbutton5,'visible','off');
set(handles.pushbutton2,'visible','off');
set(handles.text2,'visible','off');
set(handles.text7,'visible','off');
set(handles.text3,'visible','off');
set(handles.text5,'visible','off');
set(handles.edit1,'visible','off');
set(handles.text19,'visible','off');
set(handles.text10,'visible','on');
x=true+false;
y=100/x;
performans=true*y;
pause(1);
h=waitbar(0,'Performans Hesaplanýyor'); 
for i=1:2000
    waitbar(i/2000,h);
end
close(h)
pause(1)
set(handles.text11,'visible','on');
set(handles.text12,'visible','on');
set(handles.text13,'visible','on');
set(handles.text14,'visible','on');
set(handles.text15,'visible','on');
set(handles.text16,'visible','on');
set(handles.text17,'visible','on');
set(handles.text18,'visible','on');
true=num2str(true);
false=num2str(false);
empty=num2str(empty);
set(handles.text12,'String',true);
set(handles.text14,'String',false);
set(handles.text16,'String',empty);
set(handles.text18,'String',performans);
true=0;
false=0;
empty=0;
performans=0;
save data Random harf ENG adet true false empty performans DOGRU

function pushbutton4_Callback(hObject, eventdata, handles)

function pushbutton5_Callback(hObject, eventdata, handles)
load('data.mat');
DOGRU=harf(Random,2);
DOGRU=char(DOGRU);
set(handles.edit1,'String',[]); 
set(handles.text3,'visible','off');
set(handles.text5,'visible','on');
set(handles.text19,'visible','off');
set(handles.text5,'String',DOGRU);
empty=empty+1;
save data Random harf ENG adet true false empty DOGRU

function edit1_Callback(hObject, eventdata, handles)
function edit1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function pushbutton8_Callback(hObject, eventdata, handles)
function Untitled_1_Callback(hObject, eventdata, handles)
