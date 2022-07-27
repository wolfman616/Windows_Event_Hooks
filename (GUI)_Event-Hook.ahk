; Simple Hook Gui I wrote to help obseravtion and testing of Win Events set and remove hooks by clicking the list members, ctrl c copies the hook detail last selected
#Noenv
DetectHiddenWindows, On

gosub, Varz

alignment := "C" ; default justification

createeventgui:
loop, parse,% "event1,event2",    `,
	loop, parse, %A_loopfield%,   ¬,
		loop, parse, A_loopfield, |,
			switch A_index        {
				case 1:
					eventname:= substr(A_loopfield, 14) ; trim off prefix "EVENT_OBJECT_"
				case 2:
					eventcode:= A_loopfield ; event dword
				case 3:
					winevents[eventname]  :=  eventcode 
					eventTLen := StrLen(A_loopfield)		
					if (eventTLen > 99 )                { 
						Descstr1:= "" ; the rest is the description string
						loop,% ( the99 := (ceil((eventTLen*0.01) ) ) )
						{
							if (a_index = "1")          {
								if (a_index = the99)
									  Descstr1 := (SubStr(A_loopfield, 1)) ; . "END CUNTTT"
								else, Descstr1 := (SubStr(A_loopfield, 1, 100)) . "`n"
							} else {
								if (a_index = the99)    {
									align_offset :=(SubStr(A_loopfield, ((a_index -1) * 100)))
									Descstr1 := Descstr1 . align_offset ; . "END CUNT"
								} else {
									if(a_index != the99){
										Descstr2 := SubStr(A_loopfield, ((a_index -1) * 100), 100)
										Descstr1 := (Descstr1 . Descstr2 . "`n")
						}	}	}	} 
						    winevents_i[eventname]  :=  Descstr1
					} else, winevents_i[eventname]  :=  A_loopfield
			}
sleep, 200

global TBBUTTON, vCount, extension_set, alignment, Gui_W, GuiRolled, Gui_sysL_H, Gui_sys_H
;tray
menu, tray,     icon,%  "C:\Script\AHK\APP_COG.ico"
menu, M_align,   add,%  "Left",   Align_l
menu, M_align,   add,%  "Center", Align_c
menu, M_align,   add,%  "Right",  Align_r

switch alignment {
	case "L":
		menu, M_align, uncheck,%  "Right", 
		menu, M_align, uncheck,%  "Center", 
		menu, M_align,   check,%  "Left", 
		na:=" x5 y57 "
	case "C":
		menu, M_align, uncheck,%  "Right", 
		menu, M_align, uncheck,%  "Left", 
		menu, M_align,   check,%  "Center", 
		na:="center"
	case "R":
		menu, M_align, uncheck,%  "Center", 
		menu, M_align, uncheck,%  "Left", 
		menu, M_align,   check,%  "Right", 
		na:=" x2632 y62 "
}
menu, tray,      add,%    "Aligment",  :M_align
menu, tray,      add,%    "extended entries",  GoGoGadget_Gui
menu, M_align,   Check,%  "Center"

;gui
Menu, m_file,    Add
Menu, m_view,    Add
Menu, m_Options, Add
Menu, MenuBar, Add
Menu, premenu,   Add
GoGoGadget_Gui:
tt("loading...")
Menu, m_file,     DeleteAll
Menu, m_view,     DeleteAll
Menu, m_Options,  DeleteAll
Menu, MenuBar,    DeleteAll
Menu, premenu,    DeleteAll
				  
Menu, MenuBar,    Add, File,     :m_file
Menu, MenuBar,    Add, View,     :m_view
Menu, MenuBar,    Add, Options,  :m_Options
Menu, m_file,     Add, Save,     MyMenuLabel
Menu, m_file,     Add, Open previous results,      MyMenuLabel
Menu, m_file,     Add, Open results in new Window, MyMenuLabel
Menu, m_view,     Add, Position, :premenu
Menu, premenu,    Add, Left,     MyMenuLabel
Menu, premenu,    Add, Center,   MyMenuLabel
Menu, premenu,    Add, Bottom,   MyMenuLabel
Menu, m_view,     Add, Icons,    MyMenuLabel
Menu, m_view,     Add, Legend,   MyMenuLabel
Menu, m_view,     Add, Extended, extension_toggle
if extension_set 
	Menu, m_view, check, Extended

Menu, m_Options,  Add, Size,     MyMenuLabel
Menu, m_Options,  Add, Font,     MyMenuLabel
Menu, m_Options,  Add, Colours,  MyMenuLabel

Gui_extended  := !Gui_extended 

gui, Gui_sys:     Destroy
Gui, Gui_sys:     New, -dpiscale +hwndWindle, Event-Hooks
Gui, Gui_sys:     Margin,% marginSz,% marginSz
Gui, Gui_sys:     Menu, MenuBar
hModuleME := DllCall("kernel32.dll\LoadLibrary", Str,"msftedit.dll", Ptr) ; RICHEDIT50W
vPos := "y35" 
Gui, Gui_sys:Add, Custom, x0 y0 ClassToolbarWindow32 0x100 ; TBSTYLE_TOOLTIPS := 0x100 | (TBSTYLE_LIST:=0x1000) ;text to side of buttons
ControlGet,  hTB, Hwnd,, ToolbarWindow321, % "ahk_id " Windle
SendMessage, 0x43C, 0, 0,, % "ahk_id " hTB ;TB_SETMAXTEXTROWS ;text omitted from buttons; ;note: if more than one button has the same idCommand, then only the last button with that idCommand will have make the call.
vCount := 5, vSize := A_PtrSize=8?32:20
VarSetCapacity(TBBUTTON, vCount*vSize, 0)
Loop, % vCount
{
	vTxt%A_Index% := "TB " A_Index
	vOffset       := (A_Index-1)*vSize
	NumPut(A_Index-1,      TBBUTTON, vOffset,   "Int")                   ;iBitmap
	NumPut(A_Index-1,      TBBUTTON, vOffset+4, "Int")                   ;idCommand
	NumPut(0x4,            TBBUTTON, vOffset+8, "UChar")                 ;fsState	;TBSTATE_ENABLED := 4
	NumPut(&vTxt%A_Index%, TBBUTTON, vOffset+(A_PtrSize=8?24:16), "Ptr") ;iString
}
hIL := IL_Create(5, 2, 0)
IL_Add(hIL, "C:\Script\AHK\APP_COG.ico", 0)
IL_Add(hIL, "C:\Icon\24\recycle24shadow.ico", 0) 
IL_Add(hIL, "C:\Icon\24\invert_goatse_24.ico", 0)
IL_Add(hIL, "C:\Icon\24\unndoo3_0.ico", 0)
IL_Add(hIL, "C:\Icon\24\reedoo_2 - Copy.ico", 0) 
SendMessage, 0x430, 0, % hIL,, % "ahk_id " hTB               ;  (TB_SETIMAGELIST := 0x430)
TB_ADDBUTTONSW := 0x444                                      ;  (TB_ADDBUTTONSA := 0x414)
vMsg := A_IsUnicode ? 0x444 : 0x414
SendMessage, % vMsg, % vCount, % &TBBUTTON,, % "ahk_id " hTB ;  TB_ADDBUTTONSW / TB_ADDBUTTONSA

extension_set:
if Gui_extended {
	menu, tray, Check  ,%  "extended entries"
 	Gui_sysL_H := "h1000"
	Gui_sys_H  := "h1050"
} else {
	menu, tray, UnCheck,%  "extended entries"
	Gui_sysL_H := "h865"
	Gui_sys_H  := "h889"
}
	
gui, Gui_sys:Add, ListView, gTranny vCopy w890 y35 x0 +E0x4000 %Gui_sysL_H% 0x4 LV0x8200 Grid R38 +Multi NoSort, Sys-Event|Description|Value
 LV_ModifyCol(1, "180 Text"), LV_ModifyCol(2, "Text 600"), LV_ModifyCol(3, "Text c0xFF2211 80") 
 for Index, element in winevents {
	t_Ind := strreplace(Index,"EVENT_OBJECT_") ;strrip prefix
	max_index += 1
	LV_Add(,t_Ind, winevents_i[index],winevents[index])
}
gui, Gui_sYs: Show, w900 %Gui_sys_H% %na% ;noactivate
if hTB
	SendMessage, 0x421,,,, % "ahk_id " hTB ; TB_AUTOSIZE
OnMessage(0x111, "WM_COMMAND")
return

;if Gui_extended 
switch alignment {
	case "L":
		na:=" x5 y57 "
	case "C":
		na:="center"
	case "R":
		na:=" x2632 y62 "
}

gui, Gui_sYs: Show, w900 %Gui_sys_H% %na% ;noactivate
if hTB
	SendMessage, 0x421,,,, % "ahk_id " hTB ; TB_AUTOSIZE
;ControlMove,, 0, -10, 0, 0, % "ahk_id " hTB

~^c::
tranny:
if winactive("ahk_id " Windle) {
	gui, Gui_sys:submit, NoHide
	CLIPBOARD =% COPY       ;not copying?
}
return,

extension_toggle:
tooltip cujtn
extension_set:=!extension_set
goto GoGoGadget_Gui 
return,

~Escape::
if !(winactive("ahk_id " Windle))
	return,
guiclose:
exitapp

Align_L:
alignment := "L"
GuiLeftAlignX := ("x" . (A_ScreenWidth * 0.3) - (0.5 * Gui_sys_W))
msgbox % GuiLeftAlignX
Gui,  Gui_sys: Show, noactivate w1006 %Gui_sys_H% x5 y57
menu, M_align, check  ,%  "Left"
menu, M_align, uncheck,%  "Center"
menu, M_align, uncheck,%  "Right"                       
return,

Align_C:
alignment := "C"
Gui,  Gui_sys: Show, noactivate w%Gui_sys_W% %Gui_sys_H% center
menu, M_align, check  ,%  "Center"
menu, M_align, uncheck,%  "Left"
menu, M_align, uncheck,%  "Right"   
return,

Align_R:
alignment := "R"
Gui,  Gui_sys: Show, NoActivate w%Gui_sys_W% %Gui_sys_H% x2632 y62
menu, M_align, Check  ,%  "Right"
menu, M_align, Uncheck,%  "Left"
menu, M_align, Uncheck,%  "Center"  
return,

MyMenuLabel:
return,

WM_COMMAND(wParam, lParam, uMsg, hWnd) {
	DetectHiddenWindows, On
	WinGetClass, vWinClass, % "ahk_id " lParam
	if (vWinClass = "ToolbarWindow32") {
		switch wParam { ;button number 0 based index
			case "0":
				GuiRolled:=!GuiRolled
				
				if GuiRolled {
					Gui_W := "w270"
					LV_DeleteCol(2)		
					if   alignment = C
						 na:= "Center"
					else, na:=""
					gui, Gui_sYs: Show, noactivate %Gui_W% %Gui_sys_H% %na%
				} else { 
					Gui_W := "w900"
					gui Gui_sYs:hide
					;gui Gui_sYs:Destroy 
					settimer, GoGoGadget_Gui, -1
					exit 
				}
			case "1":
				Tooltip, Refreshing...
				settimer, tooloff, -600
				settimer, GoGoGadget_Gui,-1
			case "2":
				Tooltip, A shower of glass issues forth...
				settimer, tooloff, -1300
				Loop, % vCount
				{
					vTxt%A_Index% := "TB " A_Index
					vOffset := (A_Index-1)*vSize
					;TBSTATE_ENABLED := 4
					NumPut(A_Index-1,      TBBUTTON, vOffset,   "Int")                   ;iBitmap
					NumPut(A_Index-1,      TBBUTTON, vOffset+4, "Int")                   ;idCommand
					NumPut(0x0,            TBBUTTON, vOffset+8, "UChar")                 ;fsState
					NumPut(&vTxt%A_Index%, TBBUTTON, vOffset+(A_PtrSize=8?24:16), "Ptr") ;iString
				  ; NumPut(0x4,            TBBUTTON, vOffset+8, "UChar")                 ;fsState
				}
		}
		Sleep 1500
		ToolTip
}	}

tooloff:
tooltip,
return,


Varz:
global met_desc, copy, Gui_sys_W, Gui_sys_H, Gui_extended, event1, event2, winevents, winevents_i, GuiRolled, extension_set, Split_Head, Split_Tail
Split_Head  := "OBJECT_REORDER,ECT_END",   Split_Tail := "DRAGCANCEL,ECT_END",   Gui_W := "w900"
winevents_i := ( winevents := [] )
event1      := ("EVENT_OBJECT_ACCELERATORCHANGE|0x8012|An object's KeyboardShortcut property has changed. Server applications send this event for their accessible objects.¬EVENT_OBJECT_CLOAKED|0x8017|Sent when a window is cloaked. A cloaked window still exists, but is invisible to the user.¬EVENT_OBJECT_CONTENTSCROLLED|0x8015|A window object's scrolling has ended. Unlike EVENT_SYSTEM_SCROLLEND, this event is associated with the scrolling window. Whether the scrolling is horizontal or vertical scrolling, this event should be sent whenever the scroll action is completed.  The hwnd parameter of the WinEventProc callback function describes the scrolling window  the idObject parameter is OBJID_CLIENT, and the idChild parameter is CHILDID_SELF.¬EVENT_OBJECT_CREATE|0x8000|An object has been created. The system sends this event for the following user interface elements: caret, header control, list-view control, tab control, toolbar control, tree view control, and window object. Server applications send this event for their accessible objects.  Before sending the event for the parent object, servers must send it for all of an object's child objects. Servers must ensure that all child objects are fully created and ready to accept IAccessible calls from clients before the parent object sends this event.  Because a parent object is created after its child objects, clients must make sure that an object's parent has been created before calling IAccessible::get_accParent, particularly if in-context hook functions are used.¬EVENT_OBJECT_DEFACTIONCHANGE|0x8011|An object's DefaultAction property has changed. The system sends this event for dialog boxes. Server applications send this event for their accessible objects.¬EVENT_OBJECT_DESCRIPTIONCHANGE|0x800D|An object's Description property has changed. Server applications send this event for their accessible objects.¬EVENT_OBJECT_DESTROY|0x8001|An object has been destroyed. The system sends this event for the following user interface elements: caret, header control, list-view control, tab control, toolbar control, tree view control, and window object. Server applications send this event for their accessible objects. Clients assume that all of an object's children are destroyed when the parent object sends this event.  After receiving this event, clients do not call an object's IAccessible properties or methods. However, the interface pointer must remain valid as long as there is a reference count on it due to COM rules, but the UI element may no longer be present. Further calls on the interface pointer may return failure errors  to prevent this, servers create proxy objects and monitor their life spans.¬EVENT_OBJECT_DRAGSTART|0x8021|The user started to drag an element. The hwnd, idObject, and idChild parameters of the WinEventProc callback function identify the object being dragged.¬EVENT_OBJECT_DRAGCANCEL|0x8022|The user has ended a drag operation before dropping the dragged element on a drop target. The hwnd, idObject, and idChild parameters of the WinEventProc callback function identify the object being dragged.¬EVENT_OBJECT_DRAGCOMPLETE|0x8023|The user dropped an element on a drop target. The hwnd, idObject, and idChild parameters of the WinEventProc callback function identify the object being dragged.¬EVENT_OBJECT_DRAGENTER|0x8024|The user dragged an element into a drop target's boundary. The hwnd, idObject, and idChild parameters of the WinEventProc callback function identify the drop target.¬EVENT_OBJECT_DRAGLEAVE|0x8025|The user dragged an element out of a drop target's boundary. The hwnd, idObject, and idChild parameters of the WinEventProc callback function identify the drop target.¬EVENT_OBJECT_DRAGDROPPED|0x8026|The user dropped an element on a drop target. The hwnd, idObject, and idChild parameters of the WinEventProc callback function identify the drop target.¬EVENT_OBJECT_END|0x80FF|The highest object event value.¬EVENT_OBJECT_FOCUS|0x8005|An object has received the keyboard focus. The system sends this event for the following user interface elements: list-view control, menu bar, pop-up menu, switch window, tab control, tree view control, and window object. Server applications send this event for their accessible objects.  The hwnd parameter of the WinEventProc callback function identifies the window that receives the keyboard focus.¬EVENT_OBJECT_HELPCHANGE|0x8010|An object's Help property has changed. Server applications send this event for their accessible objects.¬EVENT_OBJECT_HIDE|0x8003|An object is hidden. The system sends this event for the following user interface elements: caret and cursor. Server applications send this event for their accessible objects. When this event is generated for a parent object, all child objects are already hidden. Server applications do not send this event for the child objects.	Hidden objects include the STATE_SYSTEM_INVISIBLE flag  shown objects do not include this flag. The EVENT_OBJECT_HIDE event also indicates that the STATE_SYSTEM_INVISIBLE flag is set. Therefore, servers do not send the EVENT_STATE_CHANGE event in this case.¬EVENT_OBJECT_HOSTEDOBJECTSINVALIDATED|0x8020|A window that hosts other accessible objects has changed the hosted objects. A client might need to query the host window to discover the new hosted objects, especially if the client has been monitoring events from the window. A hosted object is an object from an accessibility framework MSAA or UI Automation that is different from that of the host. Changes in hosted objects that are from the same framework as the host should be handed with the structural change events, such as EVENT_OBJECT_CREATE for MSAA. For more info see comments within winuser.h.¬EVENT_OBJECT_IME_HIDE|0x8028|An IME window has become hidden.¬EVENT_OBJECT_IME_SHOW|0x8027|An IME window has become visible.¬EVENT_OBJECT_IME_CHANGE|0x8029|The size or position of an IME window has changed.¬EVENT_OBJECT_INVOKED|0x8013|An object has been invoked  for example, the user has clicked a button. This event is supported by common controls and is used by UI Automation.	For this event, the hwnd, ID, and idChild parameters of the WinEventProc callback function identify the item that is invoked.¬EVENT_OBJECT_LIVEREGIONCHANGED|0x8019|An object that is part of a live region has changed. A live region is an area of an application that changes frequently and/or asynchronously.¬EVENT_OBJECT_LOCATIONCHANGE|0x800B|An object has changed location, shape, or size. The system sends this event for the following user interface elements: caret and window objects. Server applications send this event for their accessible objects.  This event is generated in response to a change in the top-level object within the object hierarchy  it is not generated for any children that the object might have. For example, if the user resizes a window, the system sends this notification for the window, but not for the menu bar, title bar, scroll bar, or other objects that have also changed.  The system does not send this event for every non-floating child window when the parent moves. However, if an application explicitly resizes child windows as a result of resizing the parent window, the system sends multiple events for the resized children.	  If an object's State property is set to STATE_SYSTEM_FLOATING, the server sends EVENT_OBJECT_LOCATIONCHANGE whenever the object changes location. If an object does not have this state, servers only trigger this event when the object moves in relation to its parent. For this event notification, the idChild parameter of the WinEventProc callback function identifies the child object that has changed.¬EVENT_OBJECT_NAMECHANGE|0x800C|An object's Name property has changed. The system sends this event for the following user interface elements: check box, cursor, list-view control, push button, radio button, status bar control, tree view control, and window object. Server applications send this event for their accessible objects.¬EVENT_OBJECT_PARENTCHANGE|0x800F|An object has a new parent object. Server applications send this event for their accessible objects.¬EVENT_OBJECT_REORDER|0x8004|A container object has added, removed, or reordered its children. The system sends this event for the following user interface elements: header control, list-view control, toolbar control, and window object. Server applications send this event as appropriate for their accessible objects.	  For example, this event is generated by a list-view object when the number of child elements or the order of the elements changes. This event is also sent by a parent window when the Z-order for the child windows changes.¬")

event2 := ("EVENT_OBJECT_SELECTION|0x8006|The selection within a container object has changed. The system sends this event for the following user interface elements: list-view control, tab control, tree view control, and window object. Server applications send this event for their accessible objects. This event signals a single selection: either a child is selected in a container that previously did not contain any selected children, or the selection has changed from one child to another.  The hwnd and idObject parameters of the WinEventProc callback function describe the container  the idChild parameter identifies the object that is selected. If the selected child is a window that also contains objects, the idChild parameter is OBJID_WINDOW.¬EVENT_OBJECT_SELECTIONADD|0x8007|A child within a container object has been added to an existing selection. The system sends this event for the following user interface elements: list box, list-view control, and tree view control. Server applications send this event for their accessible objects.  The hwnd and idObject parameters of the WinEventProc callback function describe the container. The idChild parameter is the child that is added to the selection.¬EVENT_OBJECT_SELECTIONREMOVE|0x8008|An item within a container object has been removed from the selection. The system sends this event for the following user interface elements: list box, list-view control, and tree view control. Server applications send this event for their accessible objects.  This event signals that a child is removed from an existing selection.  The hwnd and idObject parameters of the WinEventProc callback function describe the container  the idChild parameter identifies the child that has been removed from the selection.¬EVENT_OBJECT_SELECTIONWITHIN|0x8009|Numerous selection changes have occurred within a container object. The system sends this event for list boxes  server applications send it for their accessible objects.	  This event is sent when the selected items within a control have changed substantially. The event informs the client that many selection changes have occurred, and it is sent instead of several EVENT_OBJECT_SELECTIONADD or EVENT_OBJECT_SELECTIONREMOVE events. The client queries for the selected items by calling the container object's IAccessible::get_accSelection method and enumerating the selected items.  For this event notification, the hwnd and idObject parameters of the WinEventProc callback function describe the container in which the changes occurred.¬EVENT_OBJECT_SHOW|0x8002|A hidden object is shown. The system sends this event for the following user interface elements: caret, cursor, and window object. Server applications send this event for their accessible objects.  Clients assume that when this event is sent by a parent object, all child objects are already displayed. Therefore, server applications do not send this event for the child objects.  Hidden objects include the STATE_SYSTEM_INVISIBLE flag  shown objects do not include this flag. The EVENT_OBJECT_SHOW event also indicates that the STATE_SYSTEM_INVISIBLE flag is cleared. Therefore, servers do not send the EVENT_STATE_CHANGE event in this case.¬EVENT_OBJECT_STATECHANGE|0x800A|An object's state has changed. The system sends this event for the following user interface elements: check box, combo box, header control, push button, radio button, scroll bar, toolbar control, tree view control, up-down control, and window object. Server applications send this event for their accessible objects.	  For example, a state change occurs when a button object is clicked or released, or when an object is enabled or disabled.	  For this event notification, the idChild parameter of the WinEventProc callback function identifies the child object whose state has changed.¬EVENT_OBJECT_TEXTEDIT_CONVERSIONTARGETCHANGED|0x8030|The conversion target within an IME composition has changed. The conversion target is the subset of the IME composition which is actively selected as the target for user-initiated conversions.¬EVENT_OBJECT_TEXTSELECTIONCHANGED|0x8014|An object's text selection has changed. This event is supported by common controls and is used by UI Automation.  The hwnd, ID, and idChild parameters of the WinEventProc callback function describe the item that is contained in the updated text selection.¬EVENT_OBJECT_UNCLOAKED|0x8018|Sent when a window is uncloaked. A cloaked window still exists, but is invisible to the user.¬EVENT_OBJECT_VALUECHANGE|0x800E|An object's Value property has changed. The system sends this event for the user interface elements that include the scroll bar and the following controls: edit, header, hot key, progress bar, slider, and up-down. Server applications send this event for their accessible objects.¬EVENT_SYSTEM_ALERT|0x0002|An alert has been generated. Server applications should not send this event.¬EVENT_SYSTEM_ARRANGMENTPREVIEW|0x8016|A preview rectangle is being displayed.¬EVENT_SYSTEM_CAPTUREEND|0x0009|A window has lost mouse capture. This event is sent by the system, never by servers.¬EVENT_SYSTEM_CAPTURESTART|0x0008|A window has received mouse capture. This event is sent by the system, never by servers.¬EVENT_SYSTEM_CONTEXTHELPEND|0x000D|A window has exited context-sensitive Help mode. This event is not sent consistently by the system.¬EVENT_SYSTEM_CONTEXTHELPSTART|0x000C|A window has entered context-sensitive Help mode. This event is not sent consistently by the system.¬EVENT_SYSTEM_DESKTOPSWITCH|0x0020|The active desktop has been switched.¬EVENT_SYSTEM_DIALOGEND|0x0011|A dialog box has been closed. The system sends this event for standard dialog boxes  servers send it for custom dialog boxes. This event is not sent consistently by the system.¬EVENT_SYSTEM_DIALOGSTART|0x0010|A dialog box has been displayed. The system sends this event for standard dialog boxes, which are created using resource templates or Win32 dialog box functions. Servers send this event for custom dialog boxes, which are windows that function as dialog boxes but are not created in the standard way.  This event is not sent consistently by the system.¬EVENT_SYSTEM_DRAGDROPEND|0x000F|An application is about to exit drag-and-drop mode. Applications that support drag-and-drop operations must send this event the system does not send this event.¬EVENT_SYSTEM_DRAGDROPSTART|0x000E|An application is about to enter drag-and-drop mode. Applications that support drag-and-drop operations must send this event because the system does not send it.¬EVENT_SYSTEM_END|0x00FF|The highest system event value.¬EVENT_SYSTEM_FOREGROUND|0x0003|The foreground window has changed. The system sends this event even if the foreground window has changed to another window in the same thread. Server applications never send this event.	For this event, the WinEventProc callback function's hwnd parameter is the handle to the window that is in the foreground, the idObject parameter is OBJID_WINDOW, and the idChild parameter is CHILDID_SELF.¬EVENT_SYSTEM_MENUPOPUPEND|0x0007|A pop-up menu has been closed. The system sends this event for standard menus  servers send it for custom menus.  When a pop-up menu is closed, the client receives this message, and then the EVENT_SYSTEM_MENUEND event.	This event is not sent consistently by the system.¬EVENT_SYSTEM_MENUPOPUPSTART|0x0006|A pop-up menu has been displayed. The system sends this event for standard menus, which are identified by HMENU, and are created using menu-template resources or Win32 menu functions. Servers send this event for custom menus, which are user interface elements that function as menus but are not created in the standard way. This event is not sent consistently by the system.¬EVENT_SYSTEM_MENUEND|0x0005|A menu from the menu bar has been closed. The system sends this event for standard menus  servers send it for custom menus.  For this event, the WinEventProc callback function's hwnd, idObject, and idChild parameters refer to the control that contains the menu bar or the control that activates the context menu. The hwnd parameter is the handle to the window that is related to the event. The idObject parameter is OBJID_MENU or OBJID_SYSMENU for a menu, or OBJID_WINDOW for a pop-up menu. The idChild parameter is CHILDID_SELF.¬EVENT_SYSTEM_MENUSTART|0x0004|A menu item on the menu bar has been selected. The system sends this event for standard menus, which are identified by HMENU, created using menu-template resources or Win32 menu API elements. Servers send this event for custom menus, which are user interface elements that function as menus but are not created in the standard way.	For this event, the WinEventProc callback function's hwnd, idObject, and idChild parameters refer to the control that contains the menu bar or the control that activates the context menu. The hwnd parameter is the handle to the window related to the event. The idObject parameter is OBJID_MENU or OBJID_SYSMENU for a menu, or OBJID_WINDOW for a pop-up menu. The idChild parameter is CHILDID_SELF.	The system triggers more than one EVENT_SYSTEM_MENUSTART event that does not always correspond with the EVENT_SYSTEM_MENUEND event.¬EVENT_SYSTEM_MINIMIZEEND|0x0017|A window object is about to be restored. This event is sent by the system, never by servers.¬EVENT_SYSTEM_MINIMIZESTART|0x0016|A window object is about to be minimized. This event is sent by the system, never by servers.¬EVENT_SYSTEM_MOVESIZEEND|0x000B|The movement or resizing of a window has finished. This event is sent by the system, never by servers.¬EVENT_SYSTEM_MOVESIZESTART|0x000A|A window is being moved or resized. This event is sent by the system, never by servers.¬EVENT_SYSTEM_SCROLLINGEND|0x0013|Scrolling has ended on a scroll bar. This event is sent by the system for standard scroll bar controls and for scroll bars that are attached to a window. Servers send this event for custom scroll bars, which are user interface elements that function as scroll bars but are not created in the standard way.  The idObject parameter that is sent to the WinEventProc callback function is OBJID_HSCROLL for horizontal scroll bars, and OBJID_VSCROLL for vertical scroll bars.¬EVENT_SYSTEM_SCROLLINGSTART|0x0012|Scrolling has started on a scroll bar. The system sends this event for standard scroll bar controls and for scroll bars attached to a window. Servers send this event for custom scroll bars, which are user interface elements that function as scroll bars but are not created in the standard way.  The idObject parameter that is sent to the WinEventProc callback function is OBJID_HSCROLL for horizontal scrolls bars, and OBJID_VSCROLL for vertical scroll bars.¬EVENT_SYSTEM_SOUND|0x0001|A sound has been played. The system sends this event when a system sound, such as one for a menu, is played even if no sound is audible for example, due to the lack of a sound file or a sound card. Servers send this event whenever a custom UI element generates a sound.  For this event, the WinEventProc callback function receives the OBJID_SOUND value as the idObject parameter.¬EVENT_SYSTEM_SWITCHEND|0x0015|The user has released ALT+TAB. This event is sent by the system, never by servers. The hwnd parameter of the WinEventProc callback function identifies the window to which the user has switched.  If only one application is running when the user presses ALT+TAB, the system sends this event without a corresponding EVENT_SYSTEM_SWITCHSTART event.¬EVENT_SYSTEM_SWITCHSTART|0x0014|The user has pressed ALT+TAB, which activates the switch window. This event is sent by the system, never by servers. The hwnd parameter of the WinEventProc callback function identifies the window to which the user is switching.  If only one application is running when the user presses ALT+TAB, the system sends an EVENT_SYSTEM_SWITCHEND event without a corresponding EVENT_SYSTEM_SWITCHSTART event.")
return,