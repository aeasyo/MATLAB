function varargout = untitled5(varargin)
% UNTITLED5 MATLAB code for untitled5.fig
%      UNTITLED5, by itself, creates a new UNTITLED5 or raises the existing
%      singleton*.
%
%      H = UNTITLED5 returns the handle to a new UNTITLED5 or the handle to
%      the existing singleton*.
%
%      UNTITLED5('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED5.M with the given input arguments.
%
%      UNTITLED5('Property','Value',...) creates a new UNTITLED5 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled5_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled5_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled5

% Last Modified by GUIDE v2.5 02-May-2020 12:03:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled5_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled5_OutputFcn, ...
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


% --- Executes just before untitled5 is made visible.
function untitled5_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled5 (see VARARGIN)

% Choose default command line output for untitled5
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled5 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled5_OutputFcn(hObject, eventdata, handles) 
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
I=imread('D:\MATLAB\lena.jpg');

axes(handles.axes1);

imshow(I);

handles.img=I;

guidata(hObject,handles);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=imread('D:\MATLAB\lena.jpg');

I=rgb2gray(I);

fn=imnoise( I,'salt & pepper',0.2);

axes(handles.axes2);

imshow(fn);

handles.img=fn;

guidata(hObject,handles);

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=imread('D:\MATLAB\lena.jpg');

I=rgb2gray(I);

fn=imnoise( I,'salt & pepper',0.2); 

gn1=medfilt2(fn,[5 5]);

axes(handles.axes3);

imshow(gn1);

handles.img=gn1;

guidata(hObject,handles);

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=imread('D:\MATLAB\lena.jpg');

I=rgb2gray(I);

fn=imnoise( I,'salt & pepper',0.2);

gn2=medfilt2(fn,[5 5],'indexed');

axes(handles.axes4);

imshow(gn2);

handles.img=gn2;

guidata(hObject,handles);

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=imread('D:\MATLAB\lena.jpg');

I=rgb2gray(I);

fn=imnoise( I,'salt & pepper',0.2);

w=fspecial('average',[5 5]);

gm1=imfilter(fn,w); 

axes(handles.axes5);

imshow(gm1);

handles.img=gm1;

guidata(hObject,handles);

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=imread('D:\MATLAB\lena.jpg');

I=rgb2gray(I);

fn=imnoise( I,'salt & pepper',0.2);

w=fspecial('average',[5 5]);

gm2=imfilter(fn,w,'replicate'); 

axes(handles.axes6);

imshow(gm2);

handles.img=gm2;

guidata(hObject,handles);

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=imread('D:\MATLAB\lena.jpg');

I=rgb2gray(I);

axes(handles.axes7);

imshow(I);

handles.img=I;

guidata(hObject,handles);

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=imread('D:\MATLAB\lena.jpg');

I=rgb2gray(I);

fm=imnoise( I,'gaussian',0,0.02);

axes(handles.axes8);

imshow(fm);

handles.img=fm

guidata(hObject,handles);

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=imread('D:\MATLAB\lena.jpg');

I=rgb2gray(I);

fn=imnoise(I,'gaussian',0,0.02); 

fm1=medfilt2(fn,[5 5]);

axes(handles.axes9);

imshow(fm1);

handles.img=fm1;

guidata(hObject,handles);


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=imread('D:\MATLAB\lena.jpg');

I=rgb2gray(I);

fn=imnoise(I,'gaussian',0,0.02); 

fm2=medfilt2(fn,[5 5],'indexed');

axes(handles.axes10);

imshow(fm2);

handles.img=fm2;

guidata(hObject,handles);

% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

I=imread('D:\MATLAB\lena.jpg');

I=rgb2gray(I);

fn=imnoise( I,'gaussian',0,0.02);

w=fspecial('average',[5 5]);

fn1=imfilter(fn,w); 

axes(handles.axes11);

imshow(fn1);

handles.img=fn1;

guidata(hObject,handles);

% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=imread('D:\MATLAB\lena.jpg');

I=rgb2gray(I);

fn=imnoise( I,'gaussian',0,0.02);

w=fspecial('average',[5 5]);

fn2=imfilter(fn,w,'replicate'); 

axes(handles.axes12);

imshow(fn2);

handles.img=fn2;

guidata(hObject,handles);