function varargout = untitled4(varargin)
% UNTITLED4 MATLAB code for untitled4.fig
%      UNTITLED4, by itself, creates a new UNTITLED4 or raises the existing
%      singleton*.
%
%      H = UNTITLED4 returns the handle to a new UNTITLED4 or the handle to
%      the existing singleton*.
%
%      UNTITLED4('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED4.M with the given input arguments.
%
%      UNTITLED4('Property','Value',...) creates a new UNTITLED4 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled4_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled4_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled4

% Last Modified by GUIDE v2.5 30-Apr-2020 21:10:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled4_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled4_OutputFcn, ...
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


% --- Executes just before untitled4 is made visible.
function untitled4_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled4 (see VARARGIN)

% Choose default command line output for untitled4
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled4 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled4_OutputFcn(~, ~, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, ~, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=imread('D:\MATLAB\lena.jpg');

axes(handles.axes1);

imshow(I);

handles.img=I;

guidata(hObject,handles);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, ~, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=imread('D:\MATLAB\lena.jpg');

I = rgb2gray(I);

[g1,~]=edge(I,'sobel','both');

axes(handles.axes2);

imshow(g1);

handles.img=g1;

guidata(hObject,handles);

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, ~, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=imread('D:\MATLAB\lena.jpg');

I = rgb2gray(I);

[g2,~]=edge(I,'Roberts','both');

axes(handles.axes3);

imshow(g2);

handles.img=g2;

guidata(hObject,handles);

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, ~, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=imread('D:\MATLAB\lena.jpg');

I = rgb2gray(I);

[g3,~]=edge(I,'Prewitt','both');

axes(handles.axes4);

imshow(g3);

handles.img=g3;

guidata(hObject,handles);

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, ~, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=imread('D:\MATLAB\lena.jpg');

w=[0 1 0;1 -4 1;0 1 0];

L1=imfilter(I,w,'symmetric');

T=0.12*max(abs(L1(:)));

axes(handles.axes5);

imshow(L1);

handles.img=L1;

guidata(hObject,handles);

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, ~, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=imread('D:\MATLAB\lena.jpg');

I = im2double(I);

w=[0 1 0;1 -4 1;0 1 0];

L1=imfilter(I,w,'symmetric');

T=0.12*max(abs(L1(:)));

L2=I +L1;

axes(handles.axes6);

imshow(L2);

handles.img=L2;

guidata(hObject,handles);

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, ~, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=imread('D:\MATLAB\lena.jpg');

dx=[-1 -2 -1;0 0 0;1 2 1];

dy=dx';

Dx=imfilter(double(I),dx,'symmetric');

Dy=imfilter(double(I),dy,'symmetric');

D=sqrt(Dx.*Dx+Dy.*Dy);

T=0.2*max(abs(D(:)));

axes(handles.axes7);

imshow(D);

handles.img=D;

guidata(hObject,handles);

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, ~, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=imread('D:\MATLAB\lena.jpg');

I = im2double(I);

dx=[-1 -2 -1;0 0 0;1 2 1];

dy=dx';

Dx=imfilter(double(I),dx,'symmetric');

Dy=imfilter(double(I),dy,'symmetric');

D=sqrt(Dx.*Dx+Dy.*Dy);

T=0.2*max(abs(D(:)));

D=D>T;

D1=D+I;

axes(handles.axes8);

imshow(D1);

handles.img=D1;

guidata(hObject,handles);
