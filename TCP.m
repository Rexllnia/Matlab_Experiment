function varargout = TCP(varargin)
% TCP MATLAB code for TCP.fig
%      TCP, by itself, creates a new TCP or raises the existing
%      singleton*.
%
%      H = TCP returns the handle to a new TCP or the handle to
%      the existing singleton*.
%
%      TCP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TCP.M with the given input arguments.
%
%      TCP('Property','Value',...) creates a new TCP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TCP_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TCP_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TCP

% Last Modified by GUIDE v2.5 14-Mar-2021 13:24:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TCP_OpeningFcn, ...
                   'gui_OutputFcn',  @TCP_OutputFcn, ...
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


% --- Executes just before TCP is made visible.
function TCP_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TCP (see VARARGIN)

% Choose default command line output for TCP
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TCP wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = TCP_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
t_client=tcpip('localhost',30000,'NetworkRole','client');%与本地主机建立连接，端口号为30000，作为客户机连接。
fopen(t_client);%与一个服务器建立连接，直到建立完成返回，否则报错。

 txt_send='HELLO'; %发送的文本数据
pause(1);%等待连接稳定，随意设置。

fprintf(t_client,txt_send);%发送文本数据
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function pushbutton3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
