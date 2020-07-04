function varargout = untitled7(varargin)
% UNTITLED7 MATLAB code for untitled7.fig
%      UNTITLED7, by itself, creates a new UNTITLED7 or raises the existing
%      singleton*.
%
%      H = UNTITLED7 returns the handle to a new UNTITLED7 or the handle to
%      the existing singleton*.
%
%      UNTITLED7('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED7.M with the given input arguments.
%
%      UNTITLED7('Property','Value',...) creates a new UNTITLED7 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled7_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled7_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled7

% Last Modified by GUIDE v2.5 19-Jun-2020 12:04:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled7_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled7_OutputFcn, ...
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


% --- Executes just before untitled7 is made visible.
function untitled7_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled7 (see VARARGIN)

% Choose default command line output for untitled7
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled7 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled7_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=imread('D:\MATLAB\shape.jpg');

axes(handles.axes1);

imshow(I);

handles.img=I;

guidata(hObject,handles);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=imread('D:\MATLAB\shape.jpg');

se=strel('square',10);

f1 = imdilate(I,se);

axes(handles.axes2);

imshow(f1);

handles.img=f1;

guidata(hObject,handles);

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=imread('D:\MATLAB\shape.jpg');

se=strel('square',10);

f1 = imdilate(I,se);

f2 = imdilate(f1,se);

axes(handles.axes3);

imshow(f2);

handles.img=f2;

guidata(hObject,handles);

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=imread('D:\MATLAB\shape.jpg');

se=strel('square',10);

h1 = imerode(I,se);

axes(handles.axes4);

imshow(h1);

handles.img=h1;

guidata(hObject,handles);

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=imread('D:\MATLAB\shape.jpg');

se=strel('square',10);

h1 = imerode(I,se);

h2 = imerode(h1,se);

axes(handles.axes5);

imshow(h2);

handles.img=h2;

guidata(hObject,handles);


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I =imread('D:\MATLAB\shape.jpg');

se=strel('square',20);

f0=imopen(I,se);

axes(handles.axes6);

imshow(f0);

handles.img=f0;

guidata(hObject,handles);

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=imread('D:\MATLAB\shape.jpg');

se=strel('square',20);

h0=imclose(I,se);

axes(handles.axes7);

imshow(h0);

handles.img=h0;

guidata(hObject,handles);

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=imread('D:\MATLAB\shape.jpg');

se=strel('square',10);

q3=imopen(I,se);

q1=imclose(q3,se);

axes(handles.axes8);

imshow(q1);

handles.img=q1;

guidata(hObject,handles);

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=imread('D:\MATLAB\shape.jpg');

se=strel('square',10);

q1=imclose(I,se);

q3=imopen(q1,se);

axes(handles.axes9);

imshow(q3);

handles.img=q3;

guidata(hObject,handles);
