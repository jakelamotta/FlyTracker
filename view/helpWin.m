function varargout = help(varargin)
%Creator: Kristian Johansson - kristian.johansson86@gmail.com
%Spring 2014
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% HELP MATLAB code for help.fig
%      HELP, by itself, creates a new HELP or raises the existing
%      singleton*.
%
%      H = HELP returns the handle to a new HELP or the handle to
%      the existing singleton*.
%
%      HELP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HELP.M with the given input arguments.
%
%      HELP('Property','Value',...) creates a new HELP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before help_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to help_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help help

% Last Modified by GUIDE v2.5 11-Apr-2014 12:45:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @help_OpeningFcn, ...
                   'gui_OutputFcn',  @help_OutputFcn, ...
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

% --- Executes just before help is made visible.
function help_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to help (see VARARGIN)

% Choose default command line output for help
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes help wait for user response (see UIRESUME)
% uiwait(handles.figure1);

text_ = varargin{1};

set(handles.text1,'String',text_);

% --- Outputs from this function are returned to the command line.
function varargout = help_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in okbtn.
function okbtn_Callback(hObject, eventdata, handles)
% hObject    handle to okbtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    close help;


% --- Executes on button press in manualbtn.
function manualbtn_Callback(hObject, eventdata, handles)
% hObject    handle to manualbtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    arg = ['evince ',getpath('helpmanual.pdf',''),' &'];
    system(arg);