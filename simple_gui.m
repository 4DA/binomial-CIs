function varargout = simple_gui(varargin)
% SIMPLE_GUI MATLAB code for simple_gui.fig
%      SIMPLE_GUI, by itself, creates a new SIMPLE_GUI or raises the existing
%      singleton*.
%
%      H = SIMPLE_GUI returns the handle to a new SIMPLE_GUI or the handle to
%      the existing singleton*.
%
%      SIMPLE_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SIMPLE_GUI.M with the given input arguments.
%
%      SIMPLE_GUI('Property','Value',...) creates a new SIMPLE_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before simple_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to simple_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help simple_gui

% Last Modified by GUIDE v2.5 24-Mar-2012 20:56:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @simple_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @simple_gui_OutputFcn, ...
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


% --- Executes just before simple_gui is made visible.
function simple_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to simple_gui (see VARARGIN)

% Choose default command line output for simple_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes simple_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = simple_gui_OutputFcn(hObject, eventdata, handles) 
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
%plot_coverage_pearson_fixed_n(100)
global cls cus;
prob = get(handles.prob_slider,'Value'); 
trials = floor(get(handles.trials_slider,'Value')); 
nt = str2num(get(handles.nt_edit, 'String'));
alpha = str2num(get(handles.alpha_edit, 'String'));

axes(handles.axes1);

if (get(handles.fixed_prob_radio, 'Value') == get(handles.fixed_prob_radio, 'Max'))
    if (get(handles.standard_ci,'Value') == get(handles.standard_ci,'Max'))
        plot_coverage_std_fixed_n_cis(trials,nt,cls,cus)
    end
    if (get(handles.cp_ci,'Value') == get(handles.cp_ci,'Max'))
        plot_coverage_pearson_fixed_n_cis(trials,nt,cls,cus)
    end
end

if (get(handles.fixed_trials_radio, 'Value') == get(handles.fixed_trials_radio, 'Max'))
    if (get(handles.standard_ci,'Value') == get(handles.standard_ci,'Max'))
        plot_coverage_std(prob,trials,alpha)
    end
    if (get(handles.cp_ci,'Value') == get(handles.cp_ci,'Max'))
        plot_coverage_pearson(prob,trials,alpha)
    end
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider5_Callback(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function trials_slider_Callback(hObject, eventdata, handles)
set(handles.trials_text,'String', floor(get(hObject, 'Value')));


% hObject    handle to trials_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function trials_slider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to trials_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function prob_slider_Callback(hObject, eventdata, handles)
% hObject    handle to prob_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.prob_text,'String', get(hObject, 'Value'));
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function prob_slider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to prob_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function alpha_edit_Callback(hObject, eventdata, handles)
% hObject    handle to alpha_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of alpha_edit as text
%        str2double(get(hObject,'String')) returns contents of alpha_edit as a double


% --- Executes during object creation, after setting all properties.
function alpha_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to alpha_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on key press with focus on pushbutton1 and none of its controls.
function pushbutton1_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  structure with the following fields (see UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)



function nt_edit_Callback(hObject, eventdata, handles)
% hObject    handle to nt_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nt_edit as text
%        str2double(get(hObject,'String')) returns contents of nt_edit as a double


% --- Executes during object creation, after setting all properties.
function nt_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nt_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calc_cis_button.
function calc_cis_button_Callback(hObject, eventdata, handles)
% hObject    handle to calc_cis_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global cls cus nnc nalpha;

trials = floor(get(handles.trials_slider,'Value')); 
alpha = str2num(get(handles.alpha_edit, 'String'));

%need_recomp = false;

%if (isempty(nnc) | isempty(nalpha) | (nnc ~= nc) | (nalpha ~= alpha))
%    need_recomp = true;
%end

axes(handles.axes2);

if (get(handles.fixed_prob_radio, 'Value') == get(handles.fixed_prob_radio, 'Max'))
    if (get(handles.standard_ci,'Value') == get(handles.standard_ci,'Max'))
        [cls cus] = get_cis_std(trials, alpha);
        nnc = trials;
        nalpha = alpha;
        cla;
        plot_cis(cls, cus);
    end
    if (get(handles.cp_ci,'Value') == get(handles.cp_ci,'Max'))
        [cls cus] = get_cis_pearson(trials, alpha);
        nnc = trials;
        nalpha = alpha;
        cla;
        plot_cis(cls, cus);
    end
end

if (get(handles.fixed_trials_radio, 'Value') == get(handles.fixed_trials_radio, 'Max'))
    if (get(handles.standard_ci,'Value') == get(handles.standard_ci,'Max'))
        %plot_coverage_std(prob,trials,alpha)
    end
    if (get(handles.cp_ci,'Value') == get(handles.cp_ci,'Max'))
        %plot_coverage_pearson(prob,trials,alpha)
    end
end


% --- Executes on slider movement.
function shift_from_slider_Callback(hObject, eventdata, handles)
% hObject    handle to shift_from_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.shift_from_edit,'String', floor(get(hObject, 'Value')));
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function shift_from_slider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to shift_from_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function shift_by_slider_Callback(hObject, eventdata, handles)
% hObject    handle to shift_by_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.shift_by_edit,'String', get(hObject, 'Value'));
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function shift_by_slider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to shift_by_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function shift_to_slider_Callback(hObject, eventdata, handles)
% hObject    handle to shift_to_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.shift_to_edit,'String', round(get(hObject, 'Value')));
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function shift_to_slider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to shift_to_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in shift_button.
function shift_button_Callback(hObject, eventdata, handles)
% hObject    handle to shift_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global cls cus;

shift_val = get(handles.shift_by_slider,'Value');
shift_from = get(handles.shift_from_slider,'Value');
shift_to = get(handles.shift_to_slider,'Value');

if (shift_to < shift_from)
    h = msgbox('From must not exceed To!','Intervals error','Error', 'Modal');
end

for x=shift_from:1:shift_to
    x = round(x);
    cls(x) = cls(x) + shift_val;
    if (cls(x) > 1.0)
        cls(x) = 1.0;
    end
    
    cus(x) = cus(x) + shift_val;
    if (cus(x) > 1.0)
        cus(x) = 1.0;
    end
end

axes(handles.axes2);
plot_cis(cls,cus);
    


function shift_by_edit_Callback(hObject, eventdata, handles)
% hObject    handle to shift_by_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of shift_by_edit as text
%        str2double(get(hObject,'String')) returns contents of shift_by_edit as a double


% --- Executes during object creation, after setting all properties.
function shift_by_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to shift_by_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function shift_from_edit_Callback(hObject, eventdata, handles)
% hObject    handle to shift_from_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of shift_from_edit as text
%        str2double(get(hObject,'String')) returns contents of shift_from_edit as a double


% --- Executes during object creation, after setting all properties.
function shift_from_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to shift_from_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function shift_to_edit_Callback(hObject, eventdata, handles)
% hObject    handle to shift_to_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of shift_to_edit as text
%        str2double(get(hObject,'String')) returns contents of shift_to_edit as a double


% --- Executes during object creation, after setting all properties.
function shift_to_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to shift_to_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function ci_number_slider_Callback(hObject, eventdata, handles)
% hObject    handle to ci_number_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
set(handles.ci_number_edit,'String', floor(get(hObject, 'Value')));

% --- Executes during object creation, after setting all properties.
function ci_number_slider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ci_number_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function ci_number_edit_Callback(hObject, eventdata, handles)
% hObject    handle to ci_number_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ci_number_edit as text
%        str2double(get(hObject,'String')) returns contents of ci_number_edit as a double


% --- Executes during object creation, after setting all properties.
function ci_number_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ci_number_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in setci_button.
function setci_button_Callback(hObject, eventdata, handles)
% hObject    handle to setci_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global cls cus;

cin = floor(get(handles.ci_number_slider,'Value'));
left_limit = get(handles.left_limit_slider,'Value');
right_limit = get(handles.right_limit_slider,'Value');

if (left_limit > right_limit)
    h = msgbox('Left must not exceed the right!','Limits error','Error', 'Modal');
end


cls(cin) = left_limit;
cus(cin) = right_limit;

axes(handles.axes2);
plot_cis(cls,cus);

% --- Executes on slider movement.
function left_limit_slider_Callback(hObject, eventdata, handles)
% hObject    handle to left_limit_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
set(handles.left_limit_edit,'String', get(hObject, 'Value'));

% --- Executes during object creation, after setting all properties.
function left_limit_slider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to left_limit_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function left_limit_edit_Callback(hObject, eventdata, handles)
% hObject    handle to left_limit_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of left_limit_edit as text
%        str2double(get(hObject,'String')) returns contents of left_limit_edit as a double


% --- Executes during object creation, after setting all properties.
function left_limit_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to left_limit_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function right_limit_slider_Callback(hObject, eventdata, handles)
% hObject    handle to right_limit_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
set(handles.right_limit_edit,'String', get(hObject, 'Value'));

% --- Executes during object creation, after setting all properties.
function right_limit_slider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to right_limit_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function right_limit_edit_Callback(hObject, eventdata, handles)
% hObject    handle to right_limit_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of right_limit_edit as text
%        str2double(get(hObject,'String')) returns contents of right_limit_edit as a double


% --- Executes during object creation, after setting all properties.
function right_limit_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to right_limit_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
