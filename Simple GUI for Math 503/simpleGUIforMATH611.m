function varargout = simpleGUIforMATH611(varargin)
% SIMPLEGUIFORMATH611 MATLAB code for simpleGUIforMATH611.fig
%      SIMPLEGUIFORMATH611, by itself, creates a new SIMPLEGUIFORMATH611 or raises the existing
%      singleton*.
%
%      H = SIMPLEGUIFORMATH611 returns the handle to a new SIMPLEGUIFORMATH611 or the handle to
%      the existing singleton*.
%
%      SIMPLEGUIFORMATH611('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SIMPLEGUIFORMATH611.M with the given input arguments.
%
%      SIMPLEGUIFORMATH611('Property','Value',...) creates a new SIMPLEGUIFORMATH611 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before simpleGUIforMATH611_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to simpleGUIforMATH611_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help simpleGUIforMATH611

% Last Modified by GUIDE v2.5 08-Oct-2015 05:51:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @simpleGUIforMATH611_OpeningFcn, ...
                   'gui_OutputFcn',  @simpleGUIforMATH611_OutputFcn, ...
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


% --- Executes just before simpleGUIforMATH611 is made visible.
function simpleGUIforMATH611_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to simpleGUIforMATH611 (see VARARGIN)

% Choose default command line output for simpleGUIforMATH611
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes simpleGUIforMATH611 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = simpleGUIforMATH611_OutputFcn(hObject, eventdata, handles) 
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

meanValue  = str2double(get(handles.meanValue,'String'));
% MeanValue is the mean of a Poisson random variable

sampleSize = str2double(get(handles.sampleSize,'String'));
% SampleSize is the sample size we will use in the histogram.

poissonSamples = poissrnd(meanValue,1,sampleSize);
% PoissonSamples is the sample

% Now we do the histogram.
hist(poissonSamples)
xlabel('Sample Bins')
ylabel('Realizations per Bin')



function meanValue_Callback(hObject, eventdata, handles)
% hObject    handle to meanValue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of meanValue as text
%        str2double(get(hObject,'String')) returns contents of meanValue as a double


% --- Executes during object creation, after setting all properties.
function meanValue_CreateFcn(hObject, eventdata, handles)
% hObject    handle to meanValue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sampleSize_Callback(hObject, eventdata, handles)
% hObject    handle to sampleSize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sampleSize as text
%        str2double(get(hObject,'String')) returns contents of sampleSize as a double


% --- Executes during object creation, after setting all properties.
function sampleSize_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sampleSize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
