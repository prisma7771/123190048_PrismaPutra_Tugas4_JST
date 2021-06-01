function varargout = JST_GUI_123190048_PrismaPutra(varargin)
% JST_GUI_123190048_PRISMAPUTRA MATLAB code for JST_GUI_123190048_PrismaPutra.fig
%      JST_GUI_123190048_PRISMAPUTRA, by itself, creates a new JST_GUI_123190048_PRISMAPUTRA or raises the existing
%      singleton*.
%
%      H = JST_GUI_123190048_PRISMAPUTRA returns the handle to a new JST_GUI_123190048_PRISMAPUTRA or the handle to
%      the existing singleton*.
%
%      JST_GUI_123190048_PRISMAPUTRA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in JST_GUI_123190048_PRISMAPUTRA.M with the given input arguments.
%
%      JST_GUI_123190048_PRISMAPUTRA('Property','Value',...) creates a new JST_GUI_123190048_PRISMAPUTRA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before JST_GUI_123190048_PrismaPutra_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to JST_GUI_123190048_PrismaPutra_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help JST_GUI_123190048_PrismaPutra

% Last Modified by GUIDE v2.5 02-Jun-2021 00:06:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @JST_GUI_123190048_PrismaPutra_OpeningFcn, ...
                   'gui_OutputFcn',  @JST_GUI_123190048_PrismaPutra_OutputFcn, ...
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


% --- Executes just before JST_GUI_123190048_PrismaPutra is made visible.
function JST_GUI_123190048_PrismaPutra_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no inputsemua args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to JST_GUI_123190048_PrismaPutra (see VARARGIN)

% Choose default command line inputsemua for JST_GUI_123190048_PrismaPutra
handles.inputsemua = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes JST_GUI_123190048_PrismaPutra wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = JST_GUI_123190048_PrismaPutra_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning inputsemua args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line inputsemua from handles structure
varargout{1} = handles.inputsemua;


% --- Executes when entered data in editable cell(s) in uitable1.
function uitable1_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to uitable1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	error5: error5 string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when selected cell(s) is changed in uitable1.
function uitable1_CellSelectionCallback(hObject, eventdata, handles)
% hObject    handle to uitable1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) currently selecteds
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
p1 = [1;1];
p2 = [1;0];
p3 = [0;1];
p4 = [0;0];
p = [p1 p2 p3 p2];

t1 = 1;
t2 = 1;
t3 = 1;
t4 = 0;
t = [t1 t2 t3 t4];

net = newp([0 1;0 1],1);

bobot = [-1 1];
net.IW{1,1} = bobot;

bias = [1];
net.b{1} = bias;

output1 = sim(net,p1);
error1 = t1 - output1;
dW = learnp(bobot,p1,[],[],[],[],error1,[],[],[],[],[]);
bobot = bobot + dW;
a = mat2str(dW);
b = mat2str(bobot);

output2 = sim(net,p2);
error2 = t2 - output2;
dW = learnp(bobot,p2,[],[],[],[],error2,[],[],[],[],[]);
bobot = bobot + dW;
a1 = mat2str(dW);
b2 = mat2str(bobot);

set(handles.output1,'String',output1);
set(handles.error1,'String',error1);
set(handles.dW1,'String',a);
set(handles.bobot1,'String',b);

set(handles.output2,'String',output2);
set(handles.error2,'String',error2);
set(handles.dW2,'String',a1);
set(handles.bobot2,'String',b2);

output3 = sim(net,p3);
error3 = t3 - output3;
dW = learnp(bobot,p3,[],[],[],[],error3,[],[],[],[],[]);
bobot = bobot + dW;
a = mat2str(dW);
b = mat2str(bobot);

set(handles.output3,'String',output3);
set(handles.error3,'String',error3);
set(handles.dW3,'String',a);
set(handles.bobot3,'String',b);

output4 = sim(net,p4);
error4 = t4 - output4;
dW = learnp(bobot,p4,[],[],[],[],error4,[],[],[],[],[]);
bobot = bobot + dW;
a = mat2str(dW);
b = mat2str(bobot);

set(handles.output4,'String',output4);
set(handles.error4,'String',error4);
set(handles.dW4,'String',a);
set(handles.bobot4,'String',b);

output5 = sim(net,p);
error5 = t - output5;
x = mat2str(output5);
y = mat2str(error5);
perfomance = perform(net,t,output5,{1});


set(handles.output5,'String',x)
set(handles.error5,'String',y);
set(handles.perf,'String',perfomance);


% --- Executes during object creation, after setting all properties.
function output5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to output5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

p1 = [1;1];
p2 = [1;0];
p3 = [0;1];
p4 = [0;0];
p = [p1 p2 p3 p4];

t1 = 1;
t2 = 1;
t3 = 1;
t4 = 0;
t = [t1 t2 t3 t4];

net = newp([0 1;0 1],1);

bobot = [-1 1];
net.IW{1,1} = bobot;

bias = [1];
net.b{1} = bias;

net = train(net,p,t);
bobotbest = mat2str(net.IW{1,1});
biasbest = mat2str(net.b{1});

set(handles.bobotopt,'String',bobotbest);
set(handles.biasopt,'String',biasbest);

% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
