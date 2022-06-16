

function varargout = matlab12(varargin)
global flag1
global ans
global link_target

% MATLAB12 MATLAB code for matlab12.fig
%      MATLAB12, by itself, creates a new MATLAB12 or raises the existing
%      singleton*.
%
%      H = MATLAB12 returns the handle to a new MATLAB12 or the handle to
%      the existing singleton*.
%
%      MATLAB12('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MATLAB12.M with the given input arguments.
%
%      MATLAB12('Property','Value',...) creates a new MATLAB12 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before matlab12_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to matlab12_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help matlab12

% Last Modified by GUIDE v2.5 02-May-2021 11:13:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @matlab12_OpeningFcn, ...
                   'gui_OutputFcn',  @matlab12_OutputFcn, ...
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
% End initialization code - DO NOT EDIT


% --- Executes just before matlab12 is made visible.
function matlab12_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to matlab12 (see VARARGIN)

% Choose default command line output for matlab12
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes matlab12 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = matlab12_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
str=get(handles.edit1,'string')
try
    solv=eval(str)
catch
    set(handles.edit1,'string','error')
    pause(0.8)
    set(handles.edit1,'string','')
end
try
set(handles.edit1,'string',['=',num2str(solv)])
end



% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
str=get(handles.edit1,'string')
set(handles.edit1,'string',[str,'3']);
try
    if str(1)=='='
        set(handles.edit1,'string',[]);
        set(handles.edit1,'string','3');
    end
end
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
str=get(handles.edit1,'string')
set(handles.edit1,'string',[str,'2']);
try
    if str(1)=='='
        set(handles.edit1,'string',[]);
        set(handles.edit1,'string','2');
    end
end
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)

str=get(handles.edit1,'string')
set(handles.edit1,'string',[str,'1']);
try
    if str(1)=='='
        set(handles.edit1,'string',[]);
        set(handles.edit1,'string','1');
    end
end
flag=get(handles.checkbox2,'value')
if flag==1
    for i=1:10
        set(handles.pushbutton4,'backgroundcolor',[0.73,0.78,0.9])
        set(handles.pushbutton3,'backgroundcolor',[0.73,0.78,0.9])
        set(handles.pushbutton7,'backgroundcolor',[0.73,0.78,0.9])
         set(handles.pushbutton18,'backgroundcolor',[0.73,0.78,0.9])
        pause(0.01)
        set(handles.pushbutton4,'backgroundcolor',[0,0,0])
        set(handles.pushbutton3,'backgroundcolor',[0,0,0])
        set(handles.pushbutton7,'backgroundcolor',[0,0,0])
         set(handles.pushbutton18,'backgroundcolor',[0,0,0])
        pause(0.01)
    end
end

% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
str=get(handles.edit1,'string')
set(handles.edit1,'string',[str,'6']);
try
    if str(1)=='='
        set(handles.edit1,'string',[]);
        set(handles.edit1,'string','6');
    end
end
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
str=get(handles.edit1,'string')
set(handles.edit1,'string',[str,'5']);
try
    if str(1)=='='
        set(handles.edit1,'string',[]);
        set(handles.edit1,'string','5');
    end
end

% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
str=get(handles.edit1,'string')
set(handles.edit1,'string',[str,'4']);
try
    if str(1)=='='
        set(handles.edit1,'string',[]);
        set(handles.edit1,'string','4');
    end
end
flag=get(handles.checkbox2,'value')
if flag==1
    for i=1:10
        pause(0.01)
        set(handles.pushbutton7,'backgroundcolor',[0.73,0.78,0.9])
        set(handles.pushbutton6,'backgroundcolor',[0.73,0.78,0.9])
        set(handles.pushbutton4,'backgroundcolor',[0.73,0.78,0.9])
        set(handles.pushbutton10,'backgroundcolor',[0.73,0.78,0.9])
        pause(0.01)
        set(handles.pushbutton7,'backgroundcolor',[0,0,0])
        set(handles.pushbutton6,'backgroundcolor',[0,0,0])
        set(handles.pushbutton4,'backgroundcolor',[0,0,0])
        set(handles.pushbutton10,'backgroundcolor',[0,0,0])
    end
end
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
str=get(handles.edit1,'string')
set(handles.edit1,'string',[str,'9']);
try
    if str(1)=='='
        set(handles.edit1,'string',[]);
        set(handles.edit1,'string','9');
    end
end
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
str=get(handles.edit1,'string')
set(handles.edit1,'string',[str,'8']);
try
    if str(1)=='='
        set(handles.edit1,'string',[]);
        set(handles.edit1,'string','8');
    end
end
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
str=get(handles.edit1,'string')
set(handles.edit1,'string',[str,'7']);
try
    if str(1)=='='
        set(handles.edit1,'string',[]);
        set(handles.edit1,'string','7');
    end
end

% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
str=get(handles.edit1,'string')
set(handles.edit1,'string',[str,'-'])
try
    if str(1)=='='
        set(handles.edit1,'string',[]);
        set(handles.edit1,'string','-');
    end
end
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
str=get(handles.edit1,'string')
set(handles.edit1,'string',[str,'*'])
try
    if str(1)=='='
        set(handles.edit1,'string',[]);
        set(handles.edit1,'string','*');
    end
end
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
str=get(handles.edit1,'string')
set(handles.edit1,'string',[str,'+'])
try
	if str(1)=='='
        set(handles.edit1,'string',[]);
        set(handles.edit1,'string','+');
	end  
end
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
str=get(handles.edit1,'string')
set(handles.edit1,'string',[str,')']);
try
    if str(1)=='='
        set(handles.edit1,'string',[]);
        set(handles.edit1,'string',')');
    end
end
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
str=get(handles.edit1,'string')
set(handles.edit1,'string',[str,'(']);
try
    if str(1)=='='
        set(handles.edit1,'string',[]);
        set(handles.edit1,'string','(');
    end
end
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
str=get(handles.edit1,'string')
set(handles.edit1,'string',[str,'cos']);
try
    if str(1)=='='
        set(handles.edit1,'string',[]);
        set(handles.edit1,'string','cos');
    end
end


% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
str=get(handles.edit1,'string')
set(handles.edit1,'string',[str,'sqrt']);
try
    if str(1)=='='
        set(handles.edit1,'string',[]);
        set(handles.edit1,'string','sqrt');
    end
end

% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton18.
function pushbutton18_Callback(hObject, eventdata, handles)
str=get(handles.edit1,'string')
set(handles.edit1,'string',[str,'0']);
try
    if str(1)=='='
        set(handles.edit1,'string',[]);
        set(handles.edit1,'string','0');
    end
end
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
str=get(handles.edit1,'string')
set(handles.edit1,'string',[str,'sin'])

try
    if str(1)=='='
        set(handles.edit1,'string',[]);
        set(handles.edit1,'string','sin');
    end
end
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
try
    
    str=get(handles.edit1,'string')
    letter=isletter(str)
    if strcmp(str(1),'=')==1
        set(handles.edit1,'string',[])
   
    else
        str(end)=[]
        set(handles.edit1,'string',str)
    end
end


% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton21.
function pushbutton21_Callback(hObject, eventdata, handles)
str=get(handles.edit1,'string')
set(handles.edit1,'string',[str,'/'])

try
    if str(1)=='='
        set(handles.edit1,'string',[]);
        set(handles.edit1,'string','/');
    end
end

% hObject    handle to pushbutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton22.
function pushbutton22_Callback(hObject, eventdata, handles)
str=get(handles.edit1,'string')
set(handles.edit1,'string',[str,'pi'])

try
    if str(1)=='='
        set(handles.edit1,'string',[]);
        set(handles.edit1,'string','pi');
    end
end

% hObject    handle to pushbutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton23.
function pushbutton23_Callback(hObject, eventdata, handles)

% hObject    handle to pushbutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton24.
function pushbutton24_Callback(hObject, eventdata, handles)
str=get(handles.edit1,'string')
set(handles.edit1,'string',[str,'.']);
try
    if str(1)=='='
        set(handles.edit1,'string',[]);
        set(handles.edit1,'string','.');
    end
end
% hObject    handle to pushbutton24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton25.
function pushbutton25_Callback(hObject, eventdata, handles)
str=get(handles.edit1,'string')
set(handles.edit1,'string',[str,'^']);
try
    if str(1)=='='
        set(handles.edit1,'string',[]);
        set(handles.edit1,'string','^');
    end
end
% hObject    handle to pushbutton25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton26.
function pushbutton26_Callback(hObject, eventdata, handles)
set(handles.edit1,'string',[])
% hObject    handle to pushbutton26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton27.
function pushbutton27_Callback(hObject, eventdata, handles)

%%————固定代码不要改——————
flag=get(handles.checkbox2,'value')
if flag==1
    global flag1
    if flag1==1
        flag1=0    
    else
        flag1=1
    end
 %%———————灯效—————————   
    
    for i=0.01:0.05:0.8
        for j=0.01:0.05:0.5
            for k=0.01:0.05:0.5
                if get(handles.checkbox2,'value')==0||flag1==1
                    flag1=1
                    break
                end
                set(handles.pushbutton6,'backgroundcolor',[i,j,k])
                 set(handles.pushbutton7,'backgroundcolor',[i+0.1,j+0.1,k+0.1])
                set(handles.pushbutton9,'backgroundcolor',[i+0.1,j+0.1,k+0.1])
                set(handles.pushbutton5,'backgroundcolor',[i+0.1,j+0.1,k+0.1])
                 set(handles.pushbutton3,'backgroundcolor',[i+0.1,j+0.1,k+0.1])
           
                 pause(0.01)
            end
        end
    end
flag=get(handles.checkbox2,'value')
if flag~=1
    set(handles.pushbutton6,'backgroundcolor',[0.8,0.8,0.8])
    set(handles.pushbutton7,'backgroundcolor',[0.8,0.8,0.8])
    set(handles.pushbutton9,'backgroundcolor',[0.8,0.8,0.8])
    set(handles.pushbutton5,'backgroundcolor',[0.8,0.8,0.8])
    set(handles.pushbutton3,'backgroundcolor',[0.8,0.8,0.8])
else
    set(handles.pushbutton6,'backgroundcolor',[0,0,0])
    set(handles.pushbutton7,'backgroundcolor',[0,0,0])
    set(handles.pushbutton9,'backgroundcolor',[0,0,0])
    set(handles.pushbutton5,'backgroundcolor',[0,0,0])
    set(handles.pushbutton3,'backgroundcolor',[0,0,0])
end
end

% hObject    handle to pushbutton27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function pushbutton10_CreateFcn(hObject, eventdata, handles)

% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)%进入夜晚
value=get(handles.checkbox2,'value')%获得进入夜晚这个checkbox的值 打钩为1 不打勾就是 0
global flag1
flag1=1
Uicontrol=get(handles.figure1,'children')%获得figure1的子对象返回一个列矩阵

if value==1%如果进入夜晚被勾选就执行以下操作
 set(handles.figure1,'color',[0,0,0])%将figure1窗口背景设置为黑色
 set(Uicontrol(1),'backgroundcolor',[0,0,0])
 set(Uicontrol(1),'foregroundcolor',[0,0,0])
    for i=6:34 %% 这里调按键 把它们黑起来 
        s1=get(Uicontrol(i),'style');
        if  strcmp(s1,'pushbutton')~=1%如果不是按钮则跳过
            continue
        end
    set(Uicontrol(i),'backgroundcolor',[0,0,0])
    set(Uicontrol(i),'foregroundcolor',[1,1,1])
    
    end
else
     set(Uicontrol(1),'backgroundcolor',[0.9,0.9,0.9])
 set(Uicontrol(1),'foregroundcolor',[1,0,1])
    set(handles.figure1,'color',[0.9,0.9,0.9])
    for i=6:34  %% 这里调按键
        s1=get(Uicontrol(i),'style')
        if  strcmp(s1,'pushbutton')~=1%如果不是按钮则跳过
            continue
        end
        set(Uicontrol(i),'backgroundcolor',[0.8,0.8,0.8])
        set(Uicontrol(i),'foregroundcolor',[0,0,0])
    end
end
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2


% --- Executes on key press with focus on pushbutton4 and none of its controls.
function pushbutton4_KeyPressFcn(hObject, eventdata, handles)

% hObject    handle to pushbutton4 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over pushbutton4.
function pushbutton4_ButtonDownFcn(hObject, eventdata, handles)

% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over pushbutton7.
function pushbutton7_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over edit1.
function edit1_ButtonDownFcn(hObject, eventdata, handles)

% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over checkbox2.
function checkbox2_ButtonDownFcn(hObject, eventdata, handles)
set(handles.edit1,'string','电信18-1 1803020131_郑宇凡')
pause(1)
set(handles.edit1,'string',[])
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton28.
function pushbutton28_Callback(hObject, eventdata, handles)
str=get(handles.edit1,'string')
set(handles.edit1,'string',[str,'log']);
try
    if str(1)=='='
        set(handles.edit1,'string',[]);
        set(handles.edit1,'string','log');
    end
end
% hObject    handle to pushbutton28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton29.
function pushbutton29_Callback(hObject, eventdata, handles)

% hObject    handle to pushbutton29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton30.
function pushbutton30_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton31.
function pushbutton31_Callback(hObject, eventdata, handles)
str=get(handles.edit1,'string')
set(handles.edit1,'string',[str,':']);
try
    if str(1)=='='
        set(handles.edit1,'string',[]);
        set(handles.edit1,'string',':');
    end
end
% hObject    handle to pushbutton31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton32.
function pushbutton32_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton33.
function pushbutton33_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton35.
function pushbutton35_Callback(hObject, eventdata, handles)
matlab12plot



% hObject    handle to pushbutton35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit4_Callback(hObject, eventdata, handles)

% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton37.
function pushbutton37_Callback(hObject, eventdata, handles)
str=get(handles.edit1,'string')
set(handles.edit1,'string',[str,'ans']);
try
    if str(1)=='='
        set(handles.edit1,'string',[]);
        set(handles.edit1,'string','ans');
    end
end
% hObject    handle to pushbutton37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton38.
function pushbutton38_Callback(hObject, eventdata, handles)
%%————固定代码不要改——————
flag=get(handles.checkbox2,'value')
if flag==1
    global flag1
    if flag1==1
        flag1=0    
    else
        flag1=1
    end
    [y,Fs] = audioread('苏天伦 - 辞九门回忆（咚鼓版） (改编版原唱_ 等什么君).mp3');
    sound(y,Fs);
 %%———————灯效——————————————————————————————————————————  
    
    for i=0.01:0.05:0.8
        for j=0.01:0.05:0.5
            for k=0.01:0.05:0.5
                %%----这个判断语句也不能改----------
                if get(handles.checkbox2,'value')==0||flag1==1
                    flag1=1
                    break
                end
               %%--------------------
                set(handles.pushbutton6,'backgroundcolor',[i,j,k])
                 set(handles.pushbutton7,'backgroundcolor',[i+0.1,j+0.1,k+0.1])
                set(handles.pushbutton9,'backgroundcolor',[i+0.1,j+0.1,k+0.1])
                set(handles.pushbutton5,'backgroundcolor',[i+0.1,j+0.1,k+0.1])
                 set(handles.pushbutton3,'backgroundcolor',[i+0.1,j+0.1,k+0.1])
           
                 pause(0.01)
            end
        end
    end
    %%--------这段是灯效回到原来的样子也不要改
flag=get(handles.checkbox2,'value')
if flag~=1
    set(handles.pushbutton6,'backgroundcolor',[0.8,0.8,0.8])
    set(handles.pushbutton7,'backgroundcolor',[0.8,0.8,0.8])
    set(handles.pushbutton9,'backgroundcolor',[0.8,0.8,0.8])
    set(handles.pushbutton5,'backgroundcolor',[0.8,0.8,0.8])
    set(handles.pushbutton3,'backgroundcolor',[0.8,0.8,0.8])
else
    set(handles.pushbutton6,'backgroundcolor',[0,0,0])
    set(handles.pushbutton7,'backgroundcolor',[0,0,0])
    set(handles.pushbutton9,'backgroundcolor',[0,0,0])
    set(handles.pushbutton5,'backgroundcolor',[0,0,0])
    set(handles.pushbutton3,'backgroundcolor',[0,0,0])
end
end
%%——————————————————————————————————————————————————
% hObject    handle to pushbutton38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton39.
function pushbutton39_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.edit1,'string')
str=str2num(str(:))

try
    solv=E4(str)
catch
    set(handles.edit1,'string','error')
    pause(0.8)
    set(handles.edit1,'string','')
end
try
set(handles.edit1,'string',[num2str(solv)])
end

% --- Executes on button press in pushbutton40.
function pushbutton40_Callback(hObject, eventdata, handles)
global link_target
str=get(handles.edit1,'string')
try
conn = database('zyf','admin','123456');
catch
conn = database('test', 'root', '123456', 'com.mysql.jdbc.Driver', 'jdbc:mysql://192.168.122.1:3306/test')  
end
curs=exec(conn,'use jisuanqi;')
%%INSERT INTO `savedata` (`id`, `data`) VALUES ('', '')
query=['DELETE FROM `savedata` WHERE id=',link_target]
curs=exec(conn,query)
query=['INSERT INTO `savedata` (`id`, `data`) VALUES (' ,link_target,  ',"',str, '");']
curs=exec(conn,query)




% hObject    handle to pushbutton40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton41.
function pushbutton41_Callback(hObject, eventdata, handles)
global link_target
try
conn = database('zyf','admin','123456');
catch
conn = database('test', 'root', '123456', 'com.mysql.jdbc.Driver', 'jdbc:mysql://192.168.122.1:3306/test')  
end
curs=exec(conn,'use jisuanqi;')
curs=exec(conn,['select * from savedata where id=',link_target,';'])
curs=fetch(curs)
str=curs.Data{2}
set(handles.edit1,'string',str)
% --- Executes on button press in quit.


% hObject    handle to pushbutton41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in checkbox3.
function checkbox3_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox3


% --- Executes on button press in pushbutton43.
function pushbutton43_Callback(hObject, eventdata, handles)
str=get(handles.edit1,'string')
global link_target
link_target=str
set(handles.edit1,'string',[])
% hObject    handle to pushbutton43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton44.
function pushbutton44_Callback(hObject, eventdata, handles)
conn = database('zyf','admin','123456');
curs=exec(conn,'use jisuanqi;')
curs=exec(conn,'select * from savedata where id=1;')
curs=fetch(curs)
str=curs.Data{2}
set(handles.edit1,'string',str)
% hObject    handle to pushbutton44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
