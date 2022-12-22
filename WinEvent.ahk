;      >...Ev3n7hOOkz...<      ;
;  (;-- p1nh34d-buZ1n355 --;)  ;
;--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝----;
TickSS:= a_tickcount, a_scriptstarttime:= time4mat()
a_time_scriptstart:= time4mat(a_now,"H:mm  -  d\M")
 #NoEnv ;  r:= Aero_Lib(), r:= Aero_StartUp()
#IfTimeout,			200
#Singleinstance,	Force
#keyhistory,		20
DetectHiddenWindows,On
DetectHiddenText,	On
SetTitleMatchMode,	2
SetTitleMatchMode,	Slow
SetBatchLines,		-1
SetWinDelay,		-1
SetControlDelay,	-1
CoordMode,	Tooltip,Screen
Coordmode,	Mouse,	Screen
Setworkingdir,% (aHkeXe:= splitpath(A_AhkPath)).dir

;;	1nit-Label-Sequence	;;
iNiT_SeQ:= "Varz>RegReads>hOOkz_init>TRAYicons_init>Menu_Tray_Init>Menu_Style_Init"
Gosub,init_Matt

;;	Aero-b^w|ist	;;
AEBlackCl:= "TaskListThumbnailWnd,no_glass,"
AEWhiteCl:= "#32769,DropDown,MozillaDropShadowWindow,Class,Net UI Tool Window Layered
,FileTypesMan,ConsoleWindowClass,Notepad++,Notepad,gdkWindowToplevel,Net UI Tool Window,FM,"
(!AEahkWhite? AEahkWhite:= "WM_SIFTer.ahk,-AHK-P|p3-,AHK-Rare_,Event-Hooks,-SIFT,Cur@,WinSpy.ahk")

TVfixListPN:= "MMC.exe,AutoHotkeyU64_UIA.exe," ;assign double buffering tree-view enumflag

; workercheck()

workerwpathchkrun	:= 	"m2eye,K3y2eye,anitray" ;on explorer restart
workerwpathrun		:=	"brightnessFloater"		;on explorer restart
ContextBG			:= "AeroGlass", AHkAeroDbg:= DbgTt:= Dbg:= True

RichEdit_WkRnd:= Dicon_lablz:= TTFocCTL:= False

TimeScriptStart()

return,

			;--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝-->>			
			;--p1Nh34d-bU51n355;-^-^-^-^-^-^-^-^-^-^-^>>			
			;--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝-->>			
			;-^-^-^-^-^-^-^-^-^-^-^--hOOkz--...--🪝 )-->>			
			;--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝-->>			

74iLHo0k(wParam,lParam ) { ; // SHELLHOOK \\; ( aka WinH00K ) ;
	global Tray_FullCount,TVfixListPN,Clas5_list,pname_list,ttt
	WinGet,pname,% "ProcessName",% (hw_Wttl:= ("ahk_id " . (hWnd:= (Format("{:#x}",lParam)))))
	wingetClass,Class,%	hw_Wttl
	winget,pid,pid,%	hw_Wttl
	wingettitle,TitleLast,% hw_Wttl
	switch,wParam {
		case,"1": if(instr(TVfixListPN,pname . ",")) {
				sendmessage,0x112D,0,0,SysTreeView321,ahk_id %lParam%
				sendmessage,0x112C,0,errorlevel|0x404,SysTreeView321,ahk_id %lParam%
				ControlGet,id,hWnd,,SysTreeView321,ahk_id %lParam%
				winset,style,+0x200,ahk_id %id%
			}
			switch,pname { ; ---🪝HSHELL_WINDOWCREATED🪝--
				case,"explorer.exe": return,workercheck() ;winget,cl,list,% hw_Wttl
				;case,"notepad++.exe": npdop3(hWnd) ;winget,cl,list,% hw_Wttl
				case,"notepad.exe": pname_list.=Format("{:#x}",lParam), 
									return,Aero_BlurWindow(lParam)
				case,"regedit.exe": return,aerogchkREGEDIT(lParam)
				case,"ExecTI.exe","Pr0c355_h4X4r.exe","ResourceHacker.exe"
					,"AutoHotkey_dpi.exe", "slsk2.exe","J COLOR PICKER.exe"
					,	"Windows Style Builder.exe", "WinaeroTweaker.exe"
					,	"mmc.exe" : return,Aero_BlurWindow(lParam)
				case,"discord.exe" : run,% "C:\Script\AHK\discord, taskbar inject.ahk"
				return,
				case,"mame.exe","mame64.exe" : return,mamed0p(lParam)
			}
			switch, Class {
			; 	case,"#32770": (!Class_List?Class_List:= Format("{:#x}",lParam) : Class_List .=(Format("{:#x}",lParam)))
				case,"MainWindowClassName" : Aero_BlurWindow(lParam) ;	<---( "Pr0c355_h4X4r.exe":)
			;	case,"AutoHotkey" : tt("AHK Init.")
			}
		case,"2","10": ; --🪝HSHELL_WINDOWDESTROYED🪝--
			instr(pname_list,(Format("{:#x}",lParam)))? pname_list:= StrReplace(pname_list,(Format("{:#x}",lParam),""))
		:	instr(Clas5_list,(Format("{:#x}",lParam)))? Clas5_list:= StrReplace(Clas5_list,(Format("{:#x}",lParam),""))
				;	switch, Class {
			;	case,"AutoHotkey" : tt("AHK Terminated.","tray",0.4)

		;if(pname="AutoHotkeyU64_UIA.exe")
			;menu,SubMenu5,icon,% "Debug *.*",% "C:\Icon\256\ICON22_1.ico",,48
	}	; 	default: ; return,;TT(quote(Title_Last) __ quote(lParam) __ quote(wParam) __, 2000)
return,
}	;	//END_74iLHo0k ; 🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝

UEventHook(UProc,Event,hWnd,idObject,idChild,dwEventThread,dwmsEventTime) {
	global winevents,sidebar,32770ttlARR
	for,index,element in winevents
		element:= Format("{:#x}",event)? evt:= Index : ()
	dbgtt? ttp(( "Event: " evt "`nhandle: " hWnd "`nOBJ: " idObject ), "800"):()
} ;--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝
;	;	;	;	;	;	;	;	;	;	;	;	;	;	;	;	;	;	;	;	;
onCntMen(Hookcx,eventcr,hWnd,idObject,idChild,dwEventThread) { ;-🪝--🪝--🪝--🪝
	return,Aero_BlurWindow(hWnd)	;--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝>>
}	;	;	;	;	;	;	;	;	;	;	;	;	;	;	;	;	;	;	;	;
;--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝>>

errOrH4nglah(ErrhWnd="") { ; Still WiP
	global oldscript
	((spth:= ScriptPath(pidget(ErrhWnd)))=oldscript)?(return,""):()
		;return,
	oldscript:=spth,Timer("Oldscript_reset",6000)
	static needL_sc____	:= "(?:^\" . chr(34) . "([\w\" . chr(34) . "\d\s\\\:\_\-\^\@\(\)\}\{\#\`\>\<\,\..]*)\" . chr(34) . ")"
	static needL_basic_	:= "(^OK\r\nError\:)"
	static needL_arrow_	:= "(?:[--->\t]*)([\d]*)"
	static needL_Line__	:= "((?:--->	)[\d]*)(?:\: )([\w\d\,\(\)\[\]\..])"
	static needL_LinErr	:= "((?:Error at line )[\d]+)"
	static needL_nofunc	:= "(?:exe" . chr(34) . ")([\w\s\: \\\.\-\d\(\>]*)"
	static needL_srcunc	:= "(?:exe" . chr(34) . " /CP65001 )([" . chr(34) . "\w\s\: \\\.\-\d\(\\)>]*)"
	static needL_TernEr	:=("Error\:  A \" . chr(34) . "\:\" . chr(34)
						. "is missing its \" . chr(34) . "\?\" . chr(34))
	static needleinc	:="(?:Error in #include file " . chr(34
					    . ")([\w:\\\s\.\d\-\((\)\<\>\;\,]*\" . chr(34) . ")")
	sleep,1000 ; Give notepad a chance to get it's act together. ;
	;(_:=RegEXMatch(TxTWin,needL_basic_,iserr,1)? msgb0x(err1:= True " " iserr))
	;(_:=RegEXMatch(TxTWin,needL_basic_,iserr)? msgb0x(err1:= True " " iserr))
	WinGetText,TxTWin,ahk_id %ErrhWnd%
	( 	!StrLen(TxTWin)? return()), ((!instr(TxTWin,"Error at")
	||	!inStr(TxTWin,"Error: Target label does not exist.")
	||	!inStr(TxTWin,"#include file")? return()
	||	!inStr(TxTWin,"Error:  Missing" . chr(34))? return()
	||	!inStr(TxTWin,"Call to nonexistent function."))? return() : err2:= True)

	(_:= RegEXMatch(TxTWin,needL_LinErr,err_line)? (msgb0x(),needle(err_line,ErrhWnd,needL_srcunc))	
	: (RegEXMatch(TxTWin,needL_TernEr,2))? err2:= True : (RegEXMatch(TxTWin,needL_Line__,2)? err2:= true))

	(err1? tt("err1 errorline: " err_line,1,"center")
	, Goto("FindErrorStage1"))
	(err2? tt("err2 errorline: " err_line,1,"center")
	, Goto("FindErrorStage2"))
	return,"End"

	FindErrorStage1:
	WinGet,pid,PID,ahk_id %ErrhWnd%
	wmi:= ComObjGet("winmgmts:"), queryEnum:= wmi.ExecQuery(""
.	"Select * from Win32_Process where ProcessId=" . pid)._NewEnum()
,	try,(R:= queryEnum[process])? (CommandLine:= process.CommandLine
,	(RegEXMatch(CommandLine,needL_sc_____,scrunc)))
	(_:= RegEXMatch(CommandLine,needL_arrow_,err_line)? msgb0x(err1:= True " " err_line "`n" err_line1))
		if _:= RegEXMatch(CommandLine,needL_sc_____,err_line)
			msgbox,% err1:= True " " err_line "`n" err_line1

	FindErrorStage2:
	msgb0x("error1")

	(RegEXMatch(TxTWin,needL_nofunc,scrunc)?msgb0x("SRcFunc`nMIA" A_LineNumber " " scrunc))
	if(!(RegEXMatch(TxTWin,needL_Line__,err_line,2))) ;msgb0x("FAILED-2-FIND-MK " match " 1`n" wanl " 2")
		return,
	else,(wanl:= RegEXMatch(TxTWin,needleinc,match,2)? msgb0x("wgs " A_LineNumber " " match "`n" wanl))

	FindErrorStage3:
	WinGet,pid,PID,ahk_id %ErrhWnd%
	wmi:= ComObjGet("winmgmts:"), queryEnum:= wmi.ExecQuery(""
.	"Select * from Win32_Process where ProcessId=" . pid)._NewEnum()
,	try,(R:= queryEnum[process])? (CommandLine:= process.CommandLine
, ( 	ScriptPath:= StrSplit(CommandLine,"""")),needle(err_line,ErrhWnd,needL_srcunc) ) :
, ( (RegEXMatch(CommandLine,needL_nofunc,scrunc)? (err_:= strReplace(err_line,"--->	")
, (		cuntass?(RUNc(quote(npplus) . " " . quote(scrunc1))) :RUNc(quote(npplus) . " " . scrunc1))
,		ScintillaNP(2024,err_,0))), sleep(1000), return() )
}

needle(err_,errhn,needL) {
	static global npplus
	WinGet,pid,PID,ahk_id %errhn%
	wmi:= ComObjGet("winmgmts:"), queryEnum:= wmi.ExecQuery(""
.	"Select * from Win32_Process where ProcessId=" . pid)._NewEnum()
,	try,(R:= queryEnum[process])? (CommandLine:= process.CommandLine
, (_:= RegEXMatch(CommandLine,needL,scrunc)? (nigger:= runc((quote(npplus) . " " . scrunc1))
,	sleep(600),ScintillaNP(2024,err_,0), winactivate(_:= ("ahk_id " . errhn)))))
, sleep(1000),
	return,
}
	;--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝
;}
;--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝

ScintillaNP(wm="",wparam="",lparam=0){
	sleep,50
	winget,ll,list,ahk_class Notepad++
	loop,% ll {
		ControlGet,ctrlhand,hWnd,,Scintilla1,% "ahk_id " ll%A_Index%
		winget,pn,processname,ahk_id %ctrlhand%
		switch,pn {
			case,"notepad++.exe" : NPphWnd:= ctrlhand
					continue,
	}	}
	if(!(isint(wparam)))
		StringTrimRight,linen,wparam,3
	else,linen:= wparam ;0x
	linen--
	Sendmessage,% wm,% linen,% lparam,,ahk_id %ctrlhand%
}

runC(byref CommandStr,onPath="",dontHide="",byref pid="") {
	run,% CommandStr,% onPath,,pid
	return,
}
;--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝

onObjCreate(HookCr,eventcr,hWnd,idObject,idChild,dwEventThread) { ;-🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝
	global wmp_init_trigger,AEWhiteCl,xcent,ycent,32770ttlARR
	wingetClass,Class,% hW_ttl:= ( "ahk_id " . (Format("{:#x}", hWnd)))
;	((Class = "#32768")?Aero_BlurWindow(hWnd),return "1")
	wingettitle,Title_Last,% hW_ttl
	winget,PName,ProcessName,% hW_ttl
	fandN=%hWnd%
	switch,Class {
			case,"ShellTabWindowClass": 
				switch,title_last {
					case,"Control Panel": o := DllCall("GetParent", "uint", hWnd)
						win_move(o,xcent,ycent,1186,606,0x4001)
				}
			case,"CabinetWClass": ;WinGetText, wtxt ,% hW_ttl
				1999:= hW_ttl,Timer("1999",-700), 
				return,Aero_BlurWindow(hWnd)
		case,"Static","tooltips_class32","CLIPBRDWNDCLASS","sysdragimage" : return
		case,"#32768" : (contextBG="glass"? BlurGl(hWnd) : (contextBG="aeroglass"? Aero_BlurWindow(hWnd) : return()))
	;	case,"MozillaDropShadowWindowClass" : sexs(hWnd,0x94800000,0x00000189),BlurGl(hWnd),tt("ballbags")
		case,"AutoHotkey" : Aero_BlurWindow(hWnd)
		case,"AutoHotkeyGUI" :
			if(strlen(Title_Last)<2)
				return,
			if (_:=instr(Title_Last,"animate_target"))
			|| if (instr(Title_Last,""))
			|| if (instr(Title_Last,".ahk")) {
			   if (instr(AEahkWhite,Title_Last ","))
					Aero_BlurWindow(hWnd)
				WinGetText,textw,% hW_ttl
				loop,parse,% "-AHK-P|p3-,AHK-Rare_,Event-Hooks,-SIFT,Cur@",`,
					instr(textw,a_loopfield)? Aero_BlurWindow(hWnd) : ()
				return,
				; if !textw, 
					; return
				; if instr(textw,".png")
					; return,
				; if instr(textw,"no_glass") 
					; return
				; if instr(textw,".ahk") 
					; return
				; tt(Class title_last)
			}
			; switch,Title_Last {
				; case,"1","no_glass","imag3view4.ahk" : return,
				; case,"psychosis_UIBD.ahk","imag3view4.ahk","animate_target.ahk","executer.ahk": return,
				; case,"animate_target.ahk - AutoHotkey v1.1.33.10","animate_target.ahk"  : return,
				; case,"C:\Script\AHK\z_ConTxt\icon_fileinfo.ahk - AutoHotkey v1.1.33.10" : return,
				; case,"C:\Script\AHK\working\M2DRAG_MAG.AHK - AutoHotkey v1.1.33.10", "M2DRAG_MAG.AHK"  	: return,
				; case,"C:\Script\AHK\GDI\Whirl-E-Raster.ahk - AutoHotkey v1.1.33.10", "Whirl-E-Raster.ahk" : return,
				; case,"C:\Script\AHK\ninjmag\ninjmag.ahk - AutoHotkey v1.1.33.10", "ninjmag.ahk" : return,
				; case,"C:\Script\AHK\Working\dwm blur.ahk - AutoHotkey v1.1.33.10", "dwm blur.ahk" : return,
			; }
			; ((!aero2ahk)? return() : Aero_BlurWindow(hWnd)) ;, msgb0x(title_last))	;	areola analysis
			;;msgbox % Title_Last "`n"
			; return,aHkAeroDbg("mb") ;		Testing	;	*remove
			; (!strlen(Title_Last)?return())
			; regx1:= "!--->[0-9]", 		  Aero_BlurWindow(hWnd)
			;;winwaitactive,ahk_id %hWnd% ;	AHK-Error-Msgbox
			; errOrH4nglah(hWnd),			Aero_BlurWindow(hWnd)
			; if(instr(Title_Last,	 "C:\Script\AHK\ADhKi.ahk"))
			; return,TT(Title_Last .	"ADHKEY Incoming","Tray",4)
		case,"#32770": Aero_BlurWindow(hWnd)
			switch,pname {
				case,"wmplayer.exe" : winclose,ahk_id %hWnd%
				y:= Send_WM_COPYDATA("JumpNext","wmp_Matt.ahk ahk_class AutoHotkey")
				tt("f--dispatch")
			}
			((instr(PName,"AutoHotkey"))? errOrH4nglah(hWnd))
			if((pname="notepad++.exe")&&(Title_Last="Create new file")){
				loop,50 {
					tt(a_now), sleep(350), winclose,ahk,_id %hWnd%, sleep(350)
					(hn:= WinExist("ahk_class #32770","Create new file")? msgb0x(hn) :())
			}	}
		case,"NppProgressClass" : return,Aero_BlurWindow(hWnd)
		case,"gdkWindowTempShadow"	: return,Aero_BlurWindow(hWnd) 
		case,"SysShadow" : winset,transparent,1,ahk_id %hWnd%
			return,
		case,"HH Parent" : WIN_move(hWnd,2460,502,1024,636)
		return,
		case,"Notepad" : TT(IsWindowVisible(hWnd) " usually  0 (invis)")
		case,"RegEdit_RegEdit" : aerogchkREGEDIT(hWnd)
		case,"gdkWindowToplevel","Net UI Tool Window","FM":
			(IsWindow(hWnd))? Aero_BlurWindow(hWnd), (Title_Last="Save Image"?sendki("Right"))
		case,"#32769","BaseBar","DropDown","Net UI Tool Window Layered":
			(IsWindow(hWnd)? Aero_BlurWindow(hWnd))
		case,"MMCMainFrame" : string=wm0x112C,0,0x4,ahk_id %hWnd%
			Eee:= Send_WM_COPYDATA(string,ttt:= ("ADhKi.ahk  ahk_class AutoHotkey"))	; CBEM_SETEXTENDEDSTYLE
		case,"OperationStatusWindow":
			Aero_BlurWindow(hWnd)
			if((Title_Last="Replace or Skip Files")||(Title_Last="Confirm Folder Replace")||(Title_Last="Folder In Use")) {
				return,		; disabled still ; disabled still ; disabled still ; disabled still ; disabled still
				msgbox,% " test 5 ",,,4
				DEBUGTEST_FOC := True
				DEBUGTEST_hWnd:= WinExist("A")
				winset,exStyle,+0x08000080,% hW_ttl
				winset,Style,  +0x80000000,% hW_ttl
				win_move((Format("{:#x}"),hWnd),3000,900,"","","")
				TT("Preparing...",1000)
				msgbox,% ("old1" old_focus1 "`nold2" old_focus2 "`nold3" old_focus3 "`nol4g1" old4gnd1 "`nol4g2" old4gnd2 "`nol4g3" old4gnd3)
				winactivate,% ("ahk_id " . old_focus1)Title_Last ,% hW_ttl
				settimer,tooloff, -128
			}
			return,
		;case,"TMainForm":	reshacker nondoublebuffered treecontrol phail
		;	ControlGet 	ItemList, List,,, ahk_id %hundle%
		;	settimer, phclistget , -1000
		case,"MozillaDialogClass":
			winget,Style,Style,% hW_ttl
			winget,exStyle,exStyle,% hW_ttl
			If ((STYLE=0x16CE0084)&&(EXSTYLE=0x00000101)) ; identifying popout window
				winset,Style,0x16860084,% hW_ttl
			return,
		case,"TaskListThumbnailWnd","Net UI Tool Window Layered":
			winset,ExStyle,^0x00000100,% hW_ttl
			winset,Style,0x94000000,% hW_ttl
			return,

		case,"TaskListThumbnailWnd","FileTypesMan","ConsoleWindowClass","Notepad++" : return,Aero_BlurWindow(hWnd) ;return,
			1999:= hW_ttl,Timer("1999",-700), return,Aero_BlurWindow(hWnd)
		case,"WMP Skin Host":
			if !wmp_init_trigger {
				wmp_init_trigger:= True
				winset,style,-0x480000,% hW_ttl
				win_move(hWnd,2683,595,960,528,"")
			}
			return,
		case,"7 Sidebar":
			winget,Time_hWnd,iD,ahk_class 7 Sidebar
			winset,ExStyle,0x000800A8,%  "HUD Time",% "ahk_id " Time_hWnd:=Format("{:#x}",Time_hWnd)
			winset,ExStyle,0x000800A8,%  "Moon Phase II"
			sidebar := True
			return,
		case,"MsiDialogCloseClass":
			if (id:=WinExist("ahk_class MsiDialogCloseClass"))
				txt:= "dialog", c_ntrolName:= "Static1"
			if (mainc_nt=Format("{:#x}",(WinExist("ahk_exe msiexec.exe",txt)))) {
				ControlGet,c_ntHandle,hWnd,,%c_ntrolName%,ahk_id %mainc_nt%
				StyleMenu_Showindow(c_ntHandle,!IsWindowVisible(c_ntHandle))
				tooltip,% ("ProcdEvent: " . MsiDialogCloseClass . "`n" . id " yes..." . mainc_nt . " main " . hWnd . "`n" . c_ntHandle)
			}
			return,
		 case,"#32770":		; We=Want :
			if(Title_Last="Information") {
				winActivate,% "Information"
				winwaitActive,% "Information"
				sendki("N")
			} else if(Title_Last="Windows Media Player") {
				if stylecompare(hWnd,0x94C808DC,0x00010101)
				winclose,ahk_id %hWnd%
			} else,for,index,element in 32770ttlARR ; explorer Open/SaveDialog bgBrush mitigation attempts ='(
				((Title_Last=element)? (stylecompare(hWnd,0x86CC02C4,0x00010101), tr9g:= True))
				(tr9g?Timer("32770Fix",-1),tr9g:= False)
			if(instr(Title_Last,"Volume Mixer"))
				TT("Vol32 detected")
			if(PName="notepad++.exe")        {      ; NP++ SearchGui
				winget,32770StyleCurrent,Style,% hW_ttl
				if(32770StyleCurrent=0x94CC004C)  { ; sleep, 580
					winset,Style,-0x00400000,% hW_ttl
					TT("Style change applied...")
			}	}
			else, if(PName="explorer.exe")		  {
				if (Title_Last="Folder In Use") {
					WinGetText,testes,% hW_ttl
					TT("File handle open")
				}
				return,
			}
		case,"Notepad++":
			(!np? Aero_BlurWindow(hWnd), np:= True)
			return,
			sem:= "Notepad++ Insert AHK Parameters.ahk - AutoHotkey"
			if !WinExist(sem)
			  run,% "C:\Script\AHK\- Script\Notepad++ Insert AHK Parameters.ahk",,hide
			np:= True
		case,"RICHEDIT50W":  ; this hits numerous controls like the preview pane of explorer
			RichEdit_WkRnd? return( ) : ( )
			TT(fff+=1)
			if(!RTFCooldown&&PName="prevhost.exe") {
				Timer("RTFCooldown_reset",-2000), RTFCooldown:= True
				sendmessage,0x0030,0,1,,% hW_ttl ; #define WM_SETFONT null
				return,

				RTFCooldown_reset:
				RTFCooldown:= False
				return,
			}
		default : if !(IsWindow(hWnd))
				return,
	}
	if instr(AEWhiteCl,(Class . ","))
		Aero_BlurWindow(hWnd)
	else if (a:=UIBANDCLASS_CHECK(Class) ) {
		rThread:=""
		A_new_hWnd:="Static1"
		Gosub,% "UIBandSet"
	}

	(TTcr?ttp(("OBJ_CREATE EVENT: " PName "`nTitle: " Title_Last "`nAHK_Class: " Class "`nAHK_ID: " hWnd)))
	StyleDetect(hWnd,Style_ClassnameList2,Class,     Array_LClass)
	StyleDetect(hWnd,Style_wintitleList2, Title_Last,Array_LTitle)
	StyleDetect(hWnd,Style_procnameList2, PName,     Array_LProc)
	switch,pname {
		case,"sndvol.exe","RegistryChangesView.exe" : Aero_BlurWindow(hWnd)
	}
	switch, Title_Last {
		case,"Razer Synapse Account Login" : Timer("RZ_LOG",-1)
	}
	pushclsl_(Class)
	pushclsh_(hWnd)	; Iconchange_Check(hWnd, C las5, PName)
}
;--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝-🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝

on4Gnd(hook4g,event4g,hWnd) { ; initated from taskbar or minimize restore etc
	global ahkpos
	static EM_SETSEL:= 0x00B1
	old4gnd3:= old4gnd2, old4gnd2:= old4gnd1, old4gnd1:= hWnd
	UIBPROCESS()
	Timer("SteamIconChkTEST",-10000)
	4gnd_hWnd:= ("ahk_id " . hWnd)
	wingetClass,Class,%				4gnd_hWnd
	wingettitle,Title_Last,%		4gnd_hWnd
	winget,		PName,ProcessName,%	4gnd_hWnd

	(TT4g? tT("4Ground EVENT:`n" PName "`n" Title_Last "`nAHK_Class " Class "`nAHK_ID " hWnd))
	switch,Class {
		case,"AutoHotkey":
			if instr(Title_Last," - AutoHotkey v1.1")
			w:= wingetpos(hWnd)
			if(w.w>500 || w.h>350)
				win_move(hWnd,ahkpos.X,ahkpos.Y,ahkpos.W,ahkpos.H,"")
		case,"MainWindowClassName":  ; ProcessHacker: when activating main window, auto hoghlighting of search box
			if !(IsWindowEnabled(hWnd) && IsWindowVisible(hWnd))
				sleep,230	 ; chinkdent
			controlGet,PH_edit1_cHnd,hWnd,,Edit1,ahk_id %hWnd%
			controlClick,Edit1,ahk_id %hWnd%
			sleep,150
			SendMessage,% EM_SETSEL,0,-1,Edit1,ahk_id %hWnd%
;	/* Select a range of characters in an edit control. Start 0 and end -1 = all text selected. Start -1, = selection deselected. */
		case,"#32770": 
		if (Title_Last="Information") {
			DllCall("DestroyWindow", "int", hWnd)
			winactivate,% 4gnd_hWnd ;winactivate, Information
			;sleep,400
			;controlGet, Itemst ,hWnd,, Button2, ahk_id %hWnd%
			;Send_WM_COPYDATA()
			;SendMessage, 0xf5,4e,29,,ahk_id %Itemst%
			;msgbox % lasterror();	msgbox % Itemst
			sleep,10
			sendinput,N
		}
		case,"ApplicationFrameWindow","Chrome_WidgetWin_1","WINDOWSCLIENT":
			ttt:= "M2Drag.ahk - AutoHotkey", result := Send_WM_COPYDATA("status",ttt)
			wingettitle, Title_Last,% 4gnd_hWnd
			ttt:= "M2Drag.ahk - AutoHotkey", result := Send_WM_COPYDATA("status", "M2Drag.ahk - AutoHotkey")
			settimer,tooloff,-2220
	}

	switch,pname {
		case,"SndVol.exe" : WindowIconSet(hWnd,ico_sndvol:= "C:\Icon\48_24\sndvol_48_24_4.ico") ;Aero_BlurWindow(hWnd)
			return,
		case,"RzSynapse.exe" : settimer, RZ_LOG, -1
		case,"GoogleDriveFS.exe" : if !Title_Last = Share item
			return,
		case,"Windows Style Builder.exe":if (Title_Last="New Property") {
			ControlFocus,ComboBox2,ahk_id %hWnd%
		}
	}
	switch,Title_Last { ;case,"Google Drive Sharing Dialog":;msgbox
		case,"Razer Synapse Account Login" : Timer("RZ_LOG",-1)
	}
	Iconchange_Check(hWnd,Class,PName)
}
;--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝-🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝

onCntFocus(HookFc, eventfc, hWnd)	{		;old_focus2 := old_focus1 ;	old_focus1 := hWnd
;   (TTFocCTL?Log_CNTActive(hWnd),Timer("Log_CNTActive",-100),msgb0x("npplus_A"))	; WARNING , NOT WORKING FFS
	(TTFocCTL?(TT(Log_CNTActive(hWnd)),Timer("Log_CNTActive",-100)))
	settimer,SteamIconChkTEST,-1000
	;(TTFocCTL?msgb0x("npplus_A"))
	; if (DEBUGTEST_FOC && (hWnd != DEBUGTEST_hWnd)) {
		; msgbox,% ("focus lost " . DEBUGTEST_hWnd)	;ttp(("focus lost " . DEBUGTEST_hWnd))
		; DEBUGTEST_hWnd := ""
		; DEBUGTEST_FOC := False
	; }
	wingetClass,Class,% hnd_:= ("ahk_id " . hWnd)
	winget,PName,ProcessName,% hnd_
	wingetTitle,Title_Last,% hnd_
	;#tt(Title_Last)
	(TTFoc? TT("FOCUS EVENT:`n" PName "`n" Title_Last "`nAHK_Class " Class "`nAHK_ID " hWnd))
	pushclsl2_(Class)
	pushclsh2_(hWnd)
	switch,pname {
		case,"RzSynapse.exe" : settimer, RZ_LOG, -1
		case,"GoogleDriveFS.exe": return,
			; if !triggeredGFS {	;return,;disabled
				; triggeredGFS := True ;sleep, 1000 ;msgbox % hWnd "asdsads"
				; IsWindowEnabled(hWnd) && IsWindowVisible(hWnd) ? invert_win(hWnd) : sleep, 3000
				;;invert_win(hWnd)
				; TT("GOATSE", 1000)
				;}
	}

	switch,Title_Last {
		case,"Razer Synapse Account Login" : settimer,RZ_LOG,-1
	}

	switch,Class {
		case,"MozillaDialogClass": winget,Style,Style,% hnd_
			If (STYLE=0x16CE0084) { ;&& (EXSTYLE = 0x00000101)
				Youtube_Popoutwin:= hnd_
				wingetPos,X,Y,,EdtH,% hnd_
				WinMove,% hnd_,,,,,EdtH -39
				winset,Style,0x16860084,ahk_id %hWnd%
				send,{SPACE}
			}
		case,"#32770" : if !(Title_Last="Information")
					return,
				sleep,30
				send,N
				TT("trigtaeradwg . . .")
	}
	return,
}
;--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝-🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝--🪝

onMsgbox(HookMb, eventmb, hWnd) {
	global wmpabortions
	wingetTitle, Title_Last,%   h_Wd:=("ahk_id " . Format("{:#x}",hWnd))
	wingetClass Class,% h_Wd
	winget PName, ProcessName,% h_Wd
	(TTmb? TT( "MSGBOX EVENT:`n" PName "`n" Title_Last "`nAHK_Class " Class "`nAHK_ID " hWnd ))
	switch,Title_Last {
		case,"Information":
			MSG_WIN_TARGET:=	"Information"
			winactivate,%		"Information"
			winwaitactive,%		"Information"
			sleep,200
			send,N
			return,
		case,"Windows Media Player":
			settimer,wmpabortionsReset,10000 ;10sec  cooldown
			wmpabortions++
			if !(wmpabortions>3) {
				winclose,ahk_id %hWnd%
				result:= Send_WM_COPYDATA("PauseToggle", "wmp_Matt.ahk ahk_class AutoHotkey")
			}
			return,
	}
	(_:= WinExist("Reminder")? MSG_WIN_TARGET:="Reminder", WIN_TARGET_DESC:=MSG_WIN_TARGET)
	
	If WinExist(KILLSWITCH) {
		tt("Shutting Down Scripts",(A_ScreenWidth*0.5),(A_ScreenHeight*0.5))
		Timer("m2_Status_Req33",-2800)
		return,
	  m2_Status_Req33:
		exitApp()
	}
	Aero_BlurWindow(hWnd)
	wmpabortionsReset:
	wmpabortions:=0
	return,
}

onObjDeath(HookOD, eventod, hWndOd) {
return
	wingetClass, Class, (hndDS := ("ahk_id " . Format("{:#x}"mhWndOd)))
	wingettitle, Title_Last,% hndDS
	winget PName, ProcessName,% hndDS
	(!(TTds="")?(TT("OBJ_DESTROY EVENT:`n" PName "`n" Title_Last "`nAHK_Class " Class "`nAHK_ID " hndDS)):())
}
; end of event hooks funcs  <<<---------------------------------------

; binds				<<<---------------------------------------
~esc:: ; check ADh_K3Y		; ~#z:: ; testing
;send,{escape up}			; Gosub,quotE
if !1guic_trig				; return,
	settimer,guic_,-1		; while getkeystate("escape","p")	; sleep, 3
sleep,1100
return,

guic_:
global guic_trig:= True
gui,ttt: destroy
gui,eventgui: destroy
return,
	;	<------------< [ End of Script ] <------------------<

	;	>------------> [ Begin ... Functions ] >------------>
AtExit() {
	(!(hgui="")? dllcall("magnification.dll\MagUninitialize"))
	;splitpath a_ScriptFullPath,,,, OutNameNoExt
;	pap := "`n", Script_Title=%OutNameNoExt%.txt
	;if !fileexist(Script_Title)
;		pap := ""
	;fileAppend,% ("`n" . EventLogBuffer . ", " . Script_Title)
	DestroyAnims()
	Gosub,hOOkz_Remove
}

hOOkz_init:
Gosub,EVENT_HOOK
Gosub,WINT_HOOK
Gosub,onMSgz

EVENT_HOOK:
hOOkz:= "UProc,Proc4g_,hook4g,ProcMb_,HookMb,ProcCr_HookCr
		,ProcOD_,HookOD,procFc_,HookFc,ProcCx_,HookCx"
loop,Parse,% hOOkz,`,
	global (%a_loopfield%):= ""
;WINEVENT_OUTOFCONTEXT = 0	WINEVENT_SKIPOWNTHREAD = 1	 WINEVENT_INCONTEXT= 4	;
;WINEVENT_SKIPOWNPROCESS=2	EVENT_SYSTEM_FOREGROUND= 3
hook4g:=  dllcall("SetWinEventHook","Uint",OBJ4g,"Uint",OBJ4g,"Ptr",0,"Ptr"
, Proc4g_:= RegisterCallback("on4Gnd",""),"Uint",0,"Uint",0,"Uint",OoC|SkpO)
HookFc:=  dllcall("SetWinEventHook","Uint",OBJFc,"Uint",OBJFc,"Ptr",0,"Ptr"
, procFc_:= RegisterCallback("onCntFocus", ""),"Uint",0,"Uint",0,"Uint",OoC|SkpO)
HookMb:=  dllcall("SetWinEventHook","Uint",0x0010,"Uint",0x0010,"Ptr",0,"Ptr"
, ProcMb_:= RegisterCallback("onMsgbox",""),"Uint",0,"Uint",0,"Uint",OoC)
HookCr:=  dllcall("SetWinEventHook","Uint",OBJCR,"Uint",OBJCR,"Ptr",0,"Ptr"
, ProcCr_:= RegisterCallback("onObjCreate",""),"Uint",0,"Uint",0,"Uint",OoC|SkpO)
HookOD:=  dllcall("SetWinEventHook","Uint",OBJDS,"Uint",OBJDS,"Ptr",0,"Ptr"
, ProcOD_:= RegisterCallback("onObjDeath",""),"Uint",0,"Uint",0,"Uint",OoC|SkpO)
Hookcx:=  dllcall("SetWinEventHook","Uint",0x0006,"Uint",0x0006,"Ptr",0,"Ptr"
, Proccx_:= RegisterCallback("onCntMen",""),"Uint",0,"Uint",0,"Uint",OoC)
loop,parse,% (a:="OBJ4g,OBJFc,0x0010,OBJCR,OBJDS"),`,
	hooked_events.push(a_loopfield)
return,

WINT_HOOK:
gui,Slav3:New,+hWnd_Hw1nd -caption -DPIScale +toolwindow +owner -SysMenu +AlwaysOnTop,% "no_glass" ; WM_reg Dummy gui ; (Hw1nd := WinExist() also works) ; gui,Slav3:+LastFound
gui,Slav3:Show,x0 y%a_screenwidth% w10 h10,% "SHELLH00K"
Winset,transcolor,000000
s_Msg_id:= dllcall("RegisterShellHookWindow","UInt",_Hw1nd)
u_Msg_id:= dllcall("RegisterWindowMessage",  "Str" ,"SHELLHOOK")
UProc 	:= RegisterCallback("UEventHook","")
OnMessage(u_Msg_id,"74iLHo0k")
return,

onMSgz:
OnExit("AtExit")
OnMessage(0x4a,"Receive_WM_COPYDATA")
OnMessage(0x0404,"AHK_NOTIFYICON")
onmessage(a_index)
return,

hOOkz_Remove: ;
hOOkz:= "UProc,Proc4g_,hook4g,ProcMb_,HookMb,ProcCr_HookCr,ProcOD_,HookOD,procFc_,HookFc,ProcCx_,HookCx"
loop,Parse,% hOOkz,`,
{
	dllcall("UnhookWinEvent","Ptr",a_loopfield)
	sleep,20
	dllcall("GlobalFree",    "Ptr",a_loopfield,"Ptr")
	(%a_loopfield%) := ""
}
return,

Diconlablz_Toggle:
dICON_labelz:=!dICON_labelz
Dicon_Check:
cuntfaceee:= DesktopInfo(dICON_labelz)		; desktop-LabeLList-dtail
SendMessage,0x1037,0,0,,ahk_id %cuntfaceee%	; 0x1037 --> LVm_GeteXstyle
lv_ex_style:= errOrlevel
if !(lv_ex_style & 0x10000)
	SendMessage,0x1036,lv_ex_style &0x00010000,0,,ahk_id %cuntfaceee%	;0x1037 --> LVm_seteXstyle
sleep,10
return,

1999:
ControlGet,CtrlHandL,hWnd,,SysTreeView321,% 1999
Chwn_:= ("ahk_id " .  CtrlHandL)
Timer("chWnd",-1200)
return,

chWnd:
TT(a_now " sdsdsamm")
winset,Style,			-0x00000004,% Chwn_ ; TVM_SETEXTENDEDSTYLE := 0x112C = tvmX
winset,Style,			-0x00100000,% Chwn_ ;           0x00000020  - Auto X-Scroll
SendMessage,0x112C,0,	 0x00003C75,% Chwn_
return,

1998:
ControlGet,CtrlHandL,hWnd,,SysTreeView321,% 1998
Chwn_:= "ahk_id " . CtrlHandL
winset,Style, +0x00000202,% Chwn_
return,

GoGoGadget_Cl0ck: ; sidebar-clock click-thru
winget,Time_hWnd,iD,% "HUD Time",
if errOrlevel
	msgbox,% errOrlevel " err0r"
else,winset,ExStyle,0x000800A8,% ("ahk_id " . Time_hWnd) ; winset, ExStyle, 0x000800A8, M oon P hase I I
return,

;-~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_
toggle_m2drag_bypass:
ttt:= "M2Drag.ahk - AutoHotkey", result:= Send_WM_COPYDATA("Bypass_Last_Dragged_GUI",ttt)
return,
;-~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_
MiDiRun:
run,% MiDiRun
return,
;-~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_
;next on the stylemenu
toggle_sysmenu:
toggle_DLGFRAME:
toggle_thickframe:
toggle_modalframe:
toggle_border:
toggle_raisededge:
toggle_sunkenedge:
toggle_staticedge:
toggle_3dedge:
toggle_MinBox:
toggle_Maxbox:
toggle_hscroll:
toggle_vscroll:
toggle_LeftScroll:
toggle_Clickthru:
toggle_RightAlign:
toggle_RightoLeft:
toggle_AppWindow:
switch,a_thislabel {
	case,"toggle_sysmenu","toggle_DLGFRAME","toggle_thickframe"
	,"toggle_border","toggle_MinBox","toggle_Maxbox"
	,"toggle_hscroll","toggle_vscroll": winset,Style,stylearr[ a_thislabel ],% ("ahk_id " . A_new_hWnd )
	case,"toggle_modalframe","toggle_raisededge","toggle_sunkenedge"
	,"toggle_staticedge","toggle_3dedge","toggle_LeftScroll"
	,"toggle_Clickthru","toggle_RightAlign","toggle_RightoLeft"
	,"toggle_AppWindow": winset,ExStyle,stylexarr[ a_thislabel ],% ("ahk_id " . A_new_hWnd )
}
goto,ResetMenu

PushNewSave:
if TProcName	;regKey contains unique combo of info picked by user as a search key allowing for combinations of style & extended, classnamed, title and procname.====--------====
	regWrite,REG_SZ,HKEY_CURRENT_USER\SOFTWARE\_Mouse2Drag\Styles\procname
	,% Style . "»" . exStyle . "»" . "µ" . savePN . "µ" . save_new_Title . "µ" . save_new_cl,% savePN
if TTitle
	regWrite,REG_SZ,HKEY_CURRENT_USER\SOFTWARE\_Mouse2Drag\Styles\wintitle
	,% Style . "»" . exStyle . "»" . "µ" . savePN . "µ" . save_new_Title . "µ" . save_new_cl,% save_new_Title
if TClass
	regWrite,REG_SZ,HKEY_CURRENT_USER\SOFTWARE\_Mouse2Drag\Styles\classname
	,% Style . "»" . exStyle . "»" . "µ" . savePN . "µ" . save_new_Title . "µ" . save_new_cl,% save_new_Class
return,

SaveGUISubmit:
gui,SaveGuI: Submit,nohide
return,

SaveGUIDestroy:
gui,SaveGuI: Destroy
TProcName:= TTitle:= TClass := ""
return,

;------------==========================++++++++++++++++++++*+*+*+*

;~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~

;------------==========================++++++++++++++++++++*+*+*+*

RegReads: ; -=-==-=====-= REG READZ =-=-=---2232-==--@~@'''~~--__
Gosub,jewclawread
Gosub,UIBandGet
regRead,AEWhiteCl,HKEY_CURRENT_USER\Software\_MW\blacklist\AEWhiteCl, AEBlackCl
regRead,AEBlackCl,HKEY_CURRENT_USER\Software\_MW\blacklist, AEBlackCl
regRead,AEahkWhite,HKEY_CURRENT_USER\Software\_MW\blacklist, AEahkWhite
regRead,AEahkblack,HKEY_CURRENT_USER\Software\_MW\blacklist, AEahkblack
;msgbox % "b " AEBlackCl "`nw" AEWhiteCl;msgbox %  AEWhiteCl ;Gosub,	reg_tray_read
AhkPath	:= errOrlevel ? "" : AHKdir "\AutoHotkey.exe",.
keys	:= "HKCU\SOFTWARE\_MW\Icons\cl,HKCU\SOFTWARE\_MW\Icons\pn,HKCU\SOFTWARE\_MW\mousewheel"
loop parse, keys, `,
{
	key_:= A_Loopfield
	Loop,Reg,% key_,KV
	{
		keyN_:= A_LoopRegName
		regRead, v_
		StringTrimLeft,db,key_,24
		icon_%db%_arr[keyN_]:= v_
}	}
Loop,Reg,% wintitlekey
{
	if(A_LoopRegType="REG_SZ") {
		value1:= A_LoopRegKey . "\" . A_LoopRegSubKey
		regRead,value2,%value1%,% A_LoopRegName
		Style_wintitleList2:= Style_wintitleList2 . value2 . "‡"
		retpos:= RegEXMatch(A_LoopRegName,"^0.{9}",       ret_style,  p0s:= 1)
		retpos:= RegEXMatch(A_LoopRegName,"(\»)\K(.{10})",ret_exstyle,p0s:= 1)
		Array_wintitleList.push(ret_style . "»" . ret_exstyle . "»" . "µ" . value2)
}	}
Loop, Reg,% procnamekey
{
	if(A_LoopRegType="REG_SZ") {
		value1:= A_LoopRegKey . "\" . A_LoopRegSubKey
		regRead,value2,%value1%,% A_LoopRegName
		Style_procnameList2:= Style_procnameList2 . value2 . "‡"
		retpos:= RegEXMatch(A_LoopRegName, "^0.{9}" ,ret_style,p0s:= 1)
		retpos:= RegEXMatch(A_LoopRegName, "(\»)\K(.{10})",ret_exstyle,p0s:= 1)
		Array_ProcnameList.push(ret_style . "»" . ret_exstyle . "»" . "µ" . value2)
}	}
Loop,Reg,% classnamekey
{
	if(A_LoopRegType="REG_SZ") {
		value1:= A_LoopRegKey . "\" . A_LoopRegSubKey
		regRead,value2,%value1%,% A_LoopRegName
		Style_ClassnameList2:= (Style_ClassnameList2 . value2 . "‡")
		retpos:= RegEXMatch(A_LoopRegName,"^0.{9}" , ret_style,p0s:= 1)
		retpos:= RegEXMatch(A_LoopRegName,"(\»)\K(.{10})" , ret_exstyle,p0s:= 1)
		Array_LClass.push(ret_style . "»" . ret_exstyle . "»" . "µ" . value2)
}	}

UIBandGet:
ouruibc	 :=	[]
UIB_Handl:=	[]
keys	 := "HKCU\SOFTWARE\_MW\uiband"
loop,parse,keys,`,
{
	key_:= A_Loopfield
	loop,Reg,% key_,KV
	{
		loopn:= A_LoopRegName
		regRead,v_
		ouruibc.PUSH(v_)
		WinGet,uiblist,List,ahk_class %V_%
		loop,% uiblist {
			bum:= uiblist%a_iNdex%
			UIB_Handl.PUSH(bum)
			A_new_hWnd:= bum
			sleep,3000
			rThread:= ""
			Gosub,UIBandSet
			sleep,300
		}
		UIBPROCESS()
}	}
return,

reg_tray_read: ;; disabled
Loop,Reg,% (reg_tray_key:= "HKCU\SOFTWARE\_MW\Icons\Tray")
{
	if (A_LoopRegType="REG_SZ") {
		regRead,value2,% ( A_LoopRegKey . "\" . A_LoopRegSubKey),% A_LoopRegName
		  tray_icon_pname_loaded:=  value2
		(	!detect_tray_pnames? detect_tray_pnames:= (value2 . ",") 
		: 	detect_tray_pnames:= (detect_tray_pnames . value2 . ","))
		TrayIconArr[tray_icon_pname_loaded]:= value2
}	}
return,

jewclawread:
loop,parse,% "HKCU\SOFTWARE\_MW\mousewheel", `,
{
	key_:= A_Loopfield
	loop,Reg,% key_,KV
	{
		regRead,v_
		mwheeldrag[A_LoopRegName]:= v_
}	}
regRead,Log1RZ,HKEY_CURRENT_USER\Software\_Mouse2Drag\Login,rz
if Log1RZ {
	loop,parse,Log1RZ, `,
	{
		switch,a_iNdex {
			case,"1" : Log1_RZ:= A_LoopField
			case,"2" : Pa5s_RZ:= A_LoopField
}	}	}
return,

;~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`~`

getTxTWin:
WinGetText,TxTWin,ahk_id %A_new_hWnd%
TT(((TxTWin . "`nWintext" )))
clipboard:= TxTWin
TxTWin:= ""
return,

last_classes_handles:
for,index,element in classhwlast
	concat .= "`n" . element
tooltip,% "e " concat " "  clst_max_I " "  clht_max_I
concat:= ""
return,

last_classes_names:
for,index,element in classeslast
	concat .= "`n" . element
tooltip,% "e " concat " "  clst_max_I " "  clht_max_I
concat:= ""
return,

last_classes_handles2:
for,index,element in clsShWnd_L2
	concat .= "`n" . element
tooltip,% "e " concat " "  clst2_max_I " "  clht2_max_I
concat:= ""
return,

last_classes_names2:
for,index,element in CLsS_Last
	concat .= "`n" . element
tooltip,% "e " concat " "  clst2_max_I " "  clht2_max_I
concat:= ""
return,

;------------=========================++++++++++++++++++++*+*+*+*
; ^!j::
; Shell_Restart()
; return,
;------------==========================++++++++++++++++++++*+*+*+*

ServiceRRestart:  ;0 = OK
SvcRestartSound:
SvcRestartWacom:
switch,a_thislabel {
	case,"SvcRestartWacom" : Target_Service:= "WTabletServicePro"
	case,"SvcRestartSound" : Target_Service:= "Audiosrv"
}
try,result:= service_Restart(Target_Service)
catch,
	sleep,5000
if result
	return,
else,result:= service_Restart(audiosrv)
settimer,serviceChkRResult,-4500
return,

ServiceChkRResult:
if result {
	tries += 1
	if(tries>5) {
		msgbox,% ("unable to Restart the " . Target_Service . " service")
		exit,
	}
	TT("Restarting " Target_Service)
	sleep,2000
	result:= service_Restart("WTabletServicePro")
} else,ttp(("Success..`nThe" Target_Service " Restarted succesfully" A_now))
return,

;------------==========================++++++++++++++++++++*+*+*+*
32770Fix:
;return,; mitigations disabled atm
wingetClass,Cls_A,a
if !(Cls_A="#32770") {	; "Save as" & "Open" dlgs called from the eventHook.
	winwaitActive,% "ahk_class #32770" ;  * takesawhile to visually materialise ui,hence prev.
	wingetClass,Cls_A,a
}
if (Cls_A="#32770")  {	; "Active" is not actually ready to be drawn over.
	WinGetActiveStats,Tata,W_idth,H_eight,sex,sexx
	if((W_idth<800)||(H_eight<700)) {
		TT("Saved annoyance for later`n" Tata "`n" W_idth "`n" H_eight "`n" sex "`n" sexx,200)
		return,
	}
	FixTargethW:=WinExist("A")
	while,!(IsWindowVisible(FixTargethW)) {
		if(a_iNdex>50)
			return,
		sleep,75
	}
	sleep,150
	loop,1 {
		sleep(200), tries:= 1
		gdipfix_start:
		Nnn:= Gdip_Startup(), dcC:= GetDC(FixTargethW)
		mDC:= Gdi_CreateCompatibleDC(0)
		mBM:= Gdi_CreateDIBSection(mDC,1,1,32)
		oBM:= Gdi_SelectObject( mDC,mBM )
		a:=dllcall("gdi32.dll\SetStretchBltMode","Uint",dcC,"Int",5)
		b:=dllcall("gdi32.dll\StretchBlt","Uint",dcC,"Int",0,"Int",0
		, "Int",desk_wi,"Int",desk_hi,"Uint",mdc,"Uint",0,"Uint",0
		, "Int",1,"Int",1,"Uint","0x00CC0020")
		winset,exstyle,+0x02080000,ahk_id %FixTargethW%
		msgbox,test
		Gdip_Shutdown(Nnn) ; if (a = 0 || b = 0 || tries< 8) { ; tries += 1, ; goto,gdipfix_start
}	}
return,

DpiAwareset:	; dpiinject(A_new_hWnd)
TT("currently disabled`n(NOT HOOKED)",4)
return,

DPIhw:
mousegetpos,x,y
msgbox,% DpiAwareset "CUNT!"
try,gui,DPIhw:	destroy
gui,DPIhw:New, -Caption +toolwindow +owner -SysMenu +hWndhWnd_DPIhw, 
gui,DPIhw:Add,	Button,w80 y1 x1 gDPIhw_perform,OK (Enter)
gui,DPIhw:Add,	Button,x88 y1 w80 gCancel,Cancel (Esc)
gui,DPIhw:Add,	DropDownList,w232 x175 y1 vChoice,% Choices
gui,DPIhw:Show,x-600 y-400
gui,DPIhw:Submit,Hide
win_move(hWnd_DPIhw,x-300,y-30,"","","")
Win_Animate(hWnd_DPIhw,"activate hneg slide",500)
gui,DPIhw:+0x00840000
gui,DPIhw:Submit,Nohide
return,

baggy: ;Magnifier-thru-msg;
fad3out:
; if(Magwnd:= WinExist("M2DRAG_MAG.AHK AutoHotkeyGUI")) {
	; msgbox,% Magwnd
	; SendMessage,0x0111,65303,,,ahk_id %Magwnd%
; } else,
switch,A_Thislabel {
	case,"fad3out" :SendWM_CoPYData("fad3out","M2DRAG_MAG.AHK AutoHotkeyGUI")
	case,"baggy" : run,% Mag_Path:= "C:\Program Files\Autohotkey\AutoHotkeyU64_UIA.exe C:\Script\AHK\Working\M2DRAG_MAG.AHK"
}
return,

Desktop_areaCheck:
#5::
VarSetCapacity(D_Rekt, 16)
success:= DllCall("SystemParametersInfo","uint", 0x0030,"uint",0,"uint",&D_Rekt,"uint",0)
vWinY  := NumGet(&D_Rekt,4,"Int")
if (vWinY>70) {
	desktop_custom_enabled:= true
	menu,Exp_DTopTrayM,check,%   "Desktop Area Custom"
} else {
	desktop_custom_enabled := false
	menu,Exp_DTopTrayM,uncheck,% "Desktop Area Custom"
}
return,

Window_Kidnap:
Window_Kidnap()
return,

Window_Kidnap_2_dtop:
Window2Dtop2(A_new_hWnd)
return,

AE_ADD2WL:
if instr(new_PN,"AutoHotkey"){
	scriptUnc:= scriptpath(new_Pid) . ","
	if instr(AEahkBLack, scriptUnc) {
		strreplace(AEahkBLack,scriptUnc)

		regwrite,REG_SZ,HKEY_CURRENT_USER\Software\_MW\Blacklist,AEahkBLack,% AEahkBLack
	}
	if !instr(AEahkWhite,scriptUnc) {
	msgbox
		AEahkWhite .= scriptUnc
		regwrite,REG_SZ,HKEY_CURRENT_USER\Software\_MW\blacklist,AEahkWhite,% AEahkWhite
	} else msgb0x(scriptUnc " already in list")
} else {
	if instr(AEBlackCl, _:= ( new_cl . "," )) {
		strreplace(AEBlackCl,(new_cl . ","),"")
		regwrite,REG_SZ,HKEY_CURRENT_USER\Software\_MW\Blacklist,AEBlackCl,% AEBlackCl

	} else,if !instr(AEWhiteCl, _:= ( new_cl . "," )) {
		AEWhiteCl .= _
		regwrite,REG_SZ,HKEY_CURRENT_USER\Software\_MW\blacklist,AEWhiteCl,% AEWhiteCl
}	}
Aero_BlurWindow(A_new_hWnd)
return,

AE_ADD2BL:
if instr(AEWhiteCl,_:= ( new_cl . "," )) {
	strreplace(AEWhiteCl,(new_cl . ","),"")
	regwrite,REG_SZ,HKEY_CURRENT_USER\Software\_MW\blacklist,% AEWhiteCl,% AEWhiteCl
} else,if !instr(AEBlackCl,_:= ( new_cl . "," )) {
	AEBlackCl .= %_%
	regwrite,REG_SZ,HKEY_CURRENT_USER\Software\_MW\blacklist,% AEBlackCl,% AEBlackCl
}
return,

aero2ahktoggle:
aero2ahk:= !aero2ahk
if !aero2ahk {
	strreplace(AEWhiteCl,"AutoHotkey,")
	strreplace(AEWhiteCl,"AutoHotkeyGUI,")
	menu,SubMenu3,	uncheck,%	"toggle aero on ahk ",
} else {
	AEWhiteCl.="AutoHotkey,AutoHotkeyGUI,"
	menu,SubMenu3,	check,%	"toggle aero on ahk ",
}
msgbox,% "aewh" AEWhiteCl
return,

StyleMenu_Show: ;l=[][][][[[]l=[][][][[[]l=[][][][[[]
global Handle:= MenuGetHandle("F")
menu,F,Show
return,

;`~	;`~	;`~	;`~	;`~	;`~	;`~	;`~
UIBandSet2:
UIBandSet:
UIB_Handl.push(A_new_hWnd)
rThread:= ""
Process,Exist,explorer.exe
pid_:= errOrlevel
dllFile := FileExist("AutoHotkeyMini.dll") ? "C:\Program Files\AHK\LiB\minhook\x64\AutoHotkeyMini.dll"
		: (A_PtrSize = 8) ? "C:\Program Files\AHK\LiB\minhook\x64\AutoHotkeyMini.dll"
		: "C:\Program Files\AHK\LiB\minhook\x32\AutoHotkey.dll"
uibcode =
(LTrim
	SetWorkingDir,%A_ScriptDir%
	#Include C:\Program Files\AHK\LiB\minhook\x64\MinHook.ahk
	address_SetWindowBand:= dllcall("GetProcAddress","Ptr",dllcall("GetModuleHandle",Str,"user32","Ptr"),AStr,"SetWindowBand","Ptr")
	hook1:= New MinHook("",address_SetWindowBand,"SetWindowBand_Hook")
	hook1.Enable()
	send,{LWin}
	return,
	SetWindowBand_Hook(hWnd,hWndInsertAfter,dwBand)
	{
	global  hook1
	return,dllcall(hook1.original,"ptr",%A_new_hWnd%,"ptr",0,"uint",%ZBID_UIACCESS%)
	}
)
;rThread:=InjectAhkDll(pid_,dllFile,"")
;rThread.Exec(uibcode)
AppVisibility:= ComObjCreate(CLSID_AppVisibility:= "{7E5FE3D9-985F-4908-91F9-EE19F9FD1514}",IID_IAppVisibility := "{2246EA2D-CAEA-4444-A3C4-6DE827E44313}")
if(a_thislabel="UIBandSet2")
	return,
lbl:= a_thislabel
LABElA(LbL)	{
	switch,LbL	{
		case,"AdHkRun":
			settimer,reload_orload_admhk,-1
		default:
			TT("Launching " LbL "...")
			trayTip,% ":AHK_L	",% %LbL% " - " id3Ttl,.5,0x31
			run,% (%LbL%)
}	}

;	LAbeL Ladder ; Idea had b4 realised switch,case,handler func doh
AdHkRun: ; menu, tray, check,% "Launch " a_thislabel ; swap wih a dictionary for titles ;
mDWM2:	; []()<>()[]()<>()[]()<>()[]()<>()[]()<>()[]()<>()[]()<>()[]()<>()[]()<>
wm_sift:	; []()<>()[]()<>()[]()<>()[]()<>()[]()<>()[]()<>()[]()<>()[]()<>()
Mag_:		; []()<>()[]()<>()[]()<>()[]()<>()[]()<>()[]()<>()[]()<>
MiDi_:		; []()<>()[]()<>()[]()<>()[]()<>()[]()<>()[]()<>
CleanME:	; []()<>()[]()<>()[]()<>()[]()<>()[]()<>()[](
NPInsert:	; []()<>()[]()<>()[]()<>()[]()<>()[]()<>()
DWMFixS:	; []()<>()[]()<>()[]()<>()[]()<>()[]()<>
PConfig:	; []()<>()[]()<>()[]()<>()[]()<>()[
clsids:		; []()<>()[]()<>()[]()<>()[]()<>(
WMPRun:		; []()<>()[]()<>()[]()<>()[]()<
M2dRun:		; []()<>()[]()<>()[]()<>()[]
YT_DL:		; []()<>()[]()<>()[]()<>()
ahk_rare:	; []()<>()[]()<>()[]()<>()
syscols:
SysMetr:
LABElA((Your_Label_Sir:= a_thislabel))
return,

cntdn:
winget,asa,id,% "Modified script:"
clipboard:= asa,TT(asa),CarolVorderman(asa)
return,

countdownmymsgbox:
settimer,cntdn,-500
return,
;--=---=--=--=--=--=--=taskbar / window icons-=---=--=--=--=--=--=

TRAYicons_init:
(_:= WinExist("C:\Script\AHK\anitray.ahk")? Gosub("TRAYicons_destroy"))
runc("C:\Program Files\Autohotkey\AutoHotkey.exe C:\Script\AHK\anitray.ahk")
return,

TRAYicons_destroy: ;wingettitle,tits,ahk_id %_%	
if(!_:=WinExist("anitray.ahk")) ;msgbox % tits
	return,
winget,anipiid,pid,ahk_id %_%
SendMessage,0x0111,65307,,,ahk_pid %anipiid% ;,% (anitray.ahk " - AutoHotkey") ; ID_TRAY_EXIT=65307
sleep,1100
errOrlevel? msgb0x(errOrlevel " `nBest to manually kill anitray and all animate_targets"):()
WinExist("anitray.ahk")? (msgb0x("trouble closing anitray",3), ProcessClose(_)):()
return,

Window_Icon_New:
window_UIBAND_New:
wingettitle,tt_,%			new_hW_TLsTr
winGet,		pn_,processname,% new_hW_TLsTr
wingetClass,Cl_,%				new_hW_TLsTr
switch,a_thislabel {
	case,"Window_Icon_New"   : regkeyname:= "Icons"
	case,"window_UIBAND_New" : regkeyname:= "UIBand", new_icon_path := Cl_
}
if(a_thislabel="Window_Icon_New") {
	fileSelectFile,new_icon_path,Options,C:\ICON\,% pn_ "Icon Selector" ,% "Icun (*.ico)"
	if fileexist(new_icon_path) {
		WindowIconSet(A_new_hWnd,new_icon_path)
		msgbox,% ("ok Icon will be saved for " . pn_)
	} else {
		msgbox,% new_icon_path ". error with selected file."
		return,
}	}

if(!IProcName&&!ITitle&&!IClass) {
	if(!(a_thislabel="Window_Icon_New")) {
		msgbox,% "this time then..."
		Gosub,UIBandSet
		return,
	} else,WindowIconSet(A_new_hWnd,new_icon_path)	;one off change	; apply the new icon else; check the saved critera field
} else,((!IProcName && ITitle && !IClass)? action_:= "tt" : ((!IProcName && !ITitle && IClass)? action_:= "cl" :
, ((IProcName && !ITitle && !IClass)? action_:= "pn" : action_:= "pn", new_icon_path:= (new_icon_path . " *"))))
typeid=%action_%_
icon_%action_%_arr[%typeid%] := new_icon_path		; set array member up for current session
if(a_thislabel="Window_Icon_New") {
	regWrite,% "REG_SZ",% ("HKEY_CURRENT_USER\SOFTWARE\_MW\" . regkeyname . "\" . action_),% %typeid%,% new_icon_path
	WindowIconSet(A_new_hWnd,new_icon_path)			; apply the new icon
} else {
	regWrite,% "REG_SZ",% ("HKEY_CURRENT_USER\SOFTWARE\_MW\" . regkeyname),% %typeid%,% new_icon_path
	Gosub,UIBandGet
	Gosub,UIBandSet
}
return,

windowiconRem:
WindowIconSet(A_new_hWnd,Ppath)
loop,parse,% "new_cl,new_Pn,new_tt",`,
{
	icon_Path_temp_:= a_loopfield
	stringTrimLeft,iid_grp,icon_Path_temp_,4
	regdelete,% ("HKEY_CURRENT_USER\SOFTWARE\_MW\Icons\" . iid_grp),% (%icon_Path_temp_%)
	tem=icon_%iid_grp%_arr
	%tem%.pop(%icon_Path_temp_%)
}
icon_Path_temp_:= ""
winget,ppath,ProcessPath,% new_hW_TLsTr
return,

windowuibandRem:
re:= mnbmUIB_Handl.delete(new_cl)
return,

window_iconset_guiDestroy:
gui,window_iconset_gui:destroy
return,

window_iconset_guiSubmit:
gui,window_iconset_gui:Submit
Gosub,Window_Icon_New
return,

window_UIBand_GuiSubmit:
Gosub,UIBandGet

gui,window_iconset_gui:Submit
goto,window_UIBAND_New

iconspacing:
SPI_ICONSPACINGSET(64,53)
return,

;--=---=--=--=--=--=--=tray-=---=--=--=--=--=--=;';';'
Tray_new_icon:
Tray_new_anicon: ;Gosub TRAYicons_refresh
(a_thislabel="Tray_new_anicon"? browsestartpath:= "C:\Icon\animations"  : browsestartpath:=	"C:\Icon\32")
fileSelectFile,new_icon_path,Options,% browsestartpath,% pn_ "Icon Selector" ,% "Icun (*.ico)"
(!(fileexist(new_icon_path))? return())
try,hHh:= Tray_IconInfoArr[Tray_target_pos].hWnd
catch,
	sleep,60
try,uuU:= Tray_IconInfoArr[Tray_target_pos].uid
catch,
	sleep,60
if (a_thislabel="Tray_new_anicon") {
	tray_target_PN:= "Ani" . tray_target_PN
	msgbox,% "hw not used " trayhw "`ndffdf " uuu "`nd  " hHh
	run,"C:\Program Files\Autohotkey\AutoHotkey.exe" "C:\Script\AHK\stixman_runnin\animate_target.ahk" "%new_icon_path%;%hHh%;%uuu%",,hide,anipidNEW
	regWrite,REG_SZ,HKEY_CURRENT_USER\SOFTWARE\_MW\Icons\Tray,% (tray_target_PN . "»" . tray_target_uid .  "µ" . tray_target_title ),% new_icon_path
	ANIPID.PUSH(anipidNEW)
	return,
}
Tray_Target_hicon:= ICO2hicon(new_icon_path)
TrayIcon_Set(hHh,uuU,Tray_Target_hicon)
tray_new_hicon:= ICO2hicon(new_icon_path)
regWrite,REG_SZ,HKEY_CURRENT_USER\SOFTWARE\_MW\Icons\Tray,% (tray_target_PN . "»" . tray_target_uid .  "µ" . tray_target_title ),% new_icon_path
traytip,% "Success",% ("Icon will be saved for " . Tray_Target_PN)
return,

SteamIconChkTEST:
loop,4 {
	if(CLsS_Last[RES:=((clst2_max_I-5)+a_iNdex)] = "SDL_app")
		Iconchange_Check(Format("{:#x}",clsShWnd_L2[RES]),"","steamwebhelper.exe") ;settimer,
	sleep,35
}
return,

Tray_FullCount() {
	listlines,off
	loop,
		if (ldoc:= Tray_IconInfoArr[a_iNdex].tray) {
		 if(ldoc= "NotifyIconOverflowWindow")
			_maXiNdeX:=a_iNdex,(!Tray_MainCount?Tray_MainCount:=a_iNdex-1,)
		} else,break,
	return,_maXiNdeX
}

TrayiconMenu:
Gosub,trayicons_refresh
MouseGetPos,tx,ty,trayhw
wingetclass,tray_target_Parent,% ("ahk_id " . trayhw)
tray_target_hWnd:= Format("{:#x}",trayhw)
if ((tray_target_Parent="Shell_TrayWnd")||(tray_target_Parent="NotifyIconOverflowWindow")) { ; to compensate in  array for which tray is host to target
	if !(tray_target_Parent	 = "NotifyIconOverflowWindow") {
		tray_target_tloc	:= Tray_target_Parent
		Tray_target_pos		:= ((TrayIcon_GetHotItem()) + 1)
		Tray_arr_target_pos	:= Tray_target_pos
		try,tray_target_pn	:= (Tray_IconInfoArr[Tray_target_pos].process )
	} else,if (tray_target_Parent = "NotifyIconOverflowWindow") {
			tray_target_tloc:= tray_target_Parent
		Tray_arr_target_pos	:= (Tray_target_pos:= (( res:= (TrayIcon_GetHotItem()) + 1) +Tray_MainCount))
		try,tray_target_pn	:= Tray_IconInfoArr[Tray_arr_target_pos].process
	}
	wingettitle,tray_target_title,ahk_id %tray_target_hWnd%
	tray_target_uid:= Tray_IconInfoArr[Tray_arr_target_pos].uid
	tray_target_idx:= Tray_IconInfoArr[Tray_arr_target_pos].idx
	tray_target_idc:= Tray_IconInfoArr[Tray_arr_target_pos].idCmd
	tray_target_hw := Tray_IconInfoArr[Tray_arr_target_pos].hWnd
	global 		ZZZ:= Tray_IconInfoArr[Tray_arr_target_pos].hicon
	TRAYMEN(tray_target_pn)
}
return,

tray_HiddenList:
TT("bicker digger dugdigs")
return,
tray_targethide:
msgbox,% "c" tray_target_idc "`n" tray_target_tloc
TrayIcon_Hide(tray_target_idc,tray_target_tloc,True)
return,
tray_targetremove:		;TrayIcon_Remove(tray_target_hWnd,tray_target_uid)
TrayIcon_Hide(tray_target_idc,tray_target_tloc,True)
msgbox,% tray_target_hWnd "`n" tray_target_uid "`n" tray_target_idx "`n" tray_target_tloc
TrayIcon_Delete(tray_target_idx,tray_target_tloc)
return,
TrayItem_ExplorerLoc:
tray_target_hWnd:= Tray_IconInfoArr[Tray_arr_target_pos].hWnd
WinGet,tray_target_UNCPath,ProcessPath,ahk_id %tray_target_hWnd%
TT(tray_target_UNCPath)
OpenContaining(tray_target_UNCPath)
return,
Tray_Tooltip_edit:
tray_target_tt:= Tray_IconInfoArr[Tray_arr_target_pos].tooltip
gui,TTT:New,+hWndTTTParent -DPIScale +toolwindow +owner -SysMenu +AlwaysOnTop +0x94C60000,% ("Set tooltip for " . Tray_Target_PN)
hModuleME := dllcall("kernel32.dll\LoadLibrary",Str,"msftedit.dll",Ptr)
Gui,	Add,Custom,% " ClassRICHEDIT50W r1 vsn0bby"
ControlSetText,RICHEDIT50W1,% tray_target_tt,% "ahk_id " TTTParent
gui,TTT:Add,CheckBox,Checked vSaveTTT,% "Save as default"
Gui,TTT:Add,Button,gTTTsubmit Default w80,OK
Gui,TTT:Add,Button,gTTTcancel w80,Cancel
tx +=-50
ty +=30
Gui,TTT: Show,x%tx% y%ty% w400 h200 noactivate
Aero_BlurWindow(TTTParent)
return,
TTTsubmit: ; sn0bby
Gui,TTT: Submit
tray_target_hWnd:= Tray_IconInfoArr[Tray_arr_target_pos].hWnd
tray_hWnd := WinExist(("ahk_class " . tray_target_tloc))
Tray_newTT:= "test1cl3s"
Tray_Modify( tray_target_hWnd,tray_hWnd,"",Tray_newTT )
Gui,TTT: Destroy
msgbox,% "not implemented in unicode 64bit"
return,
TTTcancel:
Gui,TTT: Destroy
return,
TrayItemProperties:
switch,tray_target_tloc {
	case,"Shell_TrayWnd" : tray_target_tlocm:= "Systray(Main)"
	case,"NotifyIconOverflowWindow" : tray_target_tlocm:= "Systray(Overflow)"
}
try,tray_target_hWnd:= (Format("{:#x}",tray_target_hWnd))
catch
	sleep,40
wingettitle,tray_target_title,% "ahk_id " tray_target_hWnd
details =% (("Location: " tray_target_tlocm "`niDx (0 based position): ") . ZZZ:=Tray_IconInfoArr[Tray_arr_target_pos].idx "`nProcName: " . ZZZ:=Tray_IconInfoArr[Tray_arr_target_pos].process "`nWinClass: " . ZZZ:=Tray_IconInfoArr[Tray_arr_target_pos].class "`nWinTitle: " tray_target_title "`nTrayToolTip: " . tray_target_tt:=Tray_IconInfoArr[Tray_arr_target_pos].tooltip) "`nPID: " . ZZZ:=Tray_IconInfoArr[Tray_arr_target_pos].pid    "`nWindow Handle: " tray_target_hWnd "`niDcmd: " . ZZZ:=Tray_IconInfoArr[Tray_arr_target_pos].idcmd   "`nIcon Handle: " Format("{:#x}",ZZZ:=Tray_IconInfoArr[Tray_arr_target_pos].hicon) "`nIconUID: " . ZZZ:=Tray_IconInfoArr[Tray_arr_target_pos].uid ;
msgbox,% " details  " details
details:=""
return,

reload_orload_admhk:				; reload_orload_admhk:
if !(aasa:=check_ADMHOTKEY()) {		; (!(aasa:=check_ADMHOTKEY())? run(AdHkRun) : Timer("admhotkey_reload_",-1))
	listlines,off ;msgbox,% AdHkRun ;msgbox,% AdHkRun
	run,% comspec " /c " AdHkRun
} else,settimer,admhotkey_reload_,-1
return,

admhotkey_reload_:
PostMessage,0x0111,65303,,,% "ADhKi.ahk - AutoHotkey" ;msgbox % errOrlevel
return,

resetbothdragsarrays:
mwheeldrag:= []
Gosub,mouselockdrag
Gosub,mousedragwh
return,

mouselockdrag:
if !mouselockdrag {
	regwrite,REG_SZ,% "HKEY_CURRENT_USER\SOFTWARE\_MW\mousewheel",% new_PN,% "mouselockdrag"
	mwheeldrag[new_PN]:="mouselockdrag"
} else {
	regdelete,% "HKEY_CURRENT_USER\SOFTWARE\_MW\mousewheel",% new_PN
	mwheeldrag.delete(new_PN)
}
Eee:= Send_WM_COPYDATA(s:= "rereadwhreg",ttt:= ("ADhKi.ahk  ahk_class AutoHotkey"))
return,

mousedragwh:
if !mousedragwh {
	regwrite,REG_SZ,% "HKEY_CURRENT_USER\SOFTWARE\_MW\mousewheel",% new_PN,% "mousedragwh"
	mwheeldrag[new_PN]:="mousedragwh"
} else {
	regdelete,% "HKEY_CURRENT_USER\SOFTWARE\_MW\mousewheel",% new_PN
	mwheeldrag.delete(new_PN)
}

Eee:= Send_WM_COPYDATA(s:= "rereadreg",ttt:= ("ADhKi.ahk  ahk_class AutoHotkey"))
return,

_window_mintraynew:
TrayHolderExE:= """C:\Program Files\Autohotkey\AutoHotkey.exe"""
minohlderSloc:= """C:\Script\AHK\stixman_runnin\trayholder.ahk"""
s:= new_path . ";" . A_new_hWnd . ";" . new_PiD . ";" . new_tt
s="%s%"
run,%TrayHolderExE% %minohlderSloc% %s%,,,minholdernew
sleep(330)
minholder.push({ "pid" : minholdernew ,"hWnd" : A_new_hWnd ,"pth" : new_path })
winhide,ahk_id %A_new_hWnd%
return,

_window_mintraycombine:
for,i in minholder
	if (minholder[i].pth = new_path) {
		if pid_Found:= minholder[i].PiD
			s:= new_path . ";" . A_new_hWnd . ";" . new_PiD . ";" . new_tt
		Send_WM_COPYDATA(s,t:= ("trayholder.ahk ahk_pid " . pid_Found))
		winhide,ahk_id %A_new_hWnd%
	}
return,

Cancel:
DPIhw_GuiClose:
DPIhwGuiClose:
submittedok:= True
gui,DPIhw:	Destroy
TT("dstroid")
return,

Stylemen_Kilwin: ; Process,Close,% new_PiD
switch,new_PN {
	case,"steamwebhelper.exe" : winget,new_PiD,pid,% "ahk_exe steam.exe"
}
Process,Close,% new_PiD
sleep,1000
(WinExist(new_hW_TLsTr)?msgb0x("fail2close"))
return,

ResetMenu:
StyleMenDel()
return,

$^rbutton:: ; TT("Style Init:`n" . quote("ready") . "..." . sleep(300) . " .... ",Sleep(100))
while(getkeystate("LCtrl","P"))
	sleep,5
return,

TTFocCTL_Toggle:
((TTFocCTL:= !TTFocCTL)? ("menu","SubMenu0","check","ctl focus tip")
: ("menu","SubMenu0","icon","ctl focus tip","C:\Icon\32\INFO_32.ico",,32))
Timer("Menu_Tray_Init",-1)
return,

TrayMen(tpname) {
	listlines,off
	if traymen
		menu,traymen,deleteall
	if tpname {
		menu,traymen,Add,%tpname%,% "DoNothing"
		(!zzz? zzz:= Icon_Load2(a_Path,sResName,nWidth) : menu("traymen","icon"
		,tpname,"HICON: " Format("{:#x}",ZZZ)),menu("traymen","disable",tpname))
	}
	menu,traymen,Add,,		; separator
	menu,traymen,Color,%	"0x002233"
	menu,traymen,Add,%		"Properties",%				"TrayItemProperties"
	menu,traymen,Icon,%		"Properties",%				"C:\Icon\24\info.ico"
	menu,traymen,Default,%	"Properties"
	menu,traymen,Add,%		"Open process location",%	"TrayItem_explorerloc"
	menu,traymen,Icon,%		"Open process location",%	"C:\Icon\24\explorer24.ico"
	menu,traymen,Add,,		; separator
	if !(instr(tpname,"AutoHotkey" )) {
		menu,traymen,Add,%	"Set icon /& save",%		"Tray_new_icon"
		menu,traymen,Icon,%	"Set icon /& save",%		"C:\Icon\24\AF_Icon.ico"
		menu,traymen,Add,%	"Set icon ( Animation seq )",% "Tray_new_anicon"
		menu,traymen,Icon,%	"Set icon ( Animation seq )",% "C:\Icon\24\head_fk_a_24_c2b.ico"
		menu,traymen,Add,%	"Reset icon",%				"DoNothing"
		menu,traymen,Icon,%	"Reset icon",%				"C:\Icon\24\unndoo3_0.ico"
	}
	menu,traymen,Add,,	; separator
	if !(instr(tpname,"AutoHotkey") ) {
		menu,traymen,Add,%	"Edit tooltip", %			"Tray_Tooltip_edit"
		menu,traymen,Icon,%	"Edit tooltip", %			"C:\Icon\24\dwm24.ico"
	}
	menu,traymen,Add,%	"Save item location",%			"DoNothing"
	menu,traymen,Icon,%	"Save item location",%			"C:\Icon\24\save.ico"
	menu,traymen,Add,%	"Add Hidden / save",%			"tray_targethide"
	menu,traymen,Icon,%	"Add Hidden / save",%			"C:\Icon\24\no_entry.ico"
	menu,traymen,Add,%	"Delete",%						"tray_targetremove"
	menu,traymen,Icon,%	"Delete",%						"C:\Icon\32\32.ico"
	menu,traymen,Add,%	"Hidden list",%					"tray_HiddenList"
	menu,traymen,Icon,%	"Hidden list",%					"C:\Icon\24\no_entry.ico"
	menu,traymen,Show,	 ; tooltip,% A_EventInfo " "
	sleep,180 ; tooltip,% GuiContextMenu(GuihWnd,CtrlhWnd,EventInfo,IsRightClick,X,Y)
	menu,traymen,DeleteAll
}

$^rbutton up::
Stylemenu_init:		;	TT("Analyzing,please wait")
MouseGetPos,x,y,A_new_hWnd,A_New_McTLhW,3
;(!inited_stylemen?	StyleMenDel())
StyleMenDel()
inited_stylemen:=	True
 _Fx:=	True
new_hW_TLsTr:= "ahk_id " . A_new_hWnd
wingetClass,	new_cl,% new_hW_TLsTr
wingetTitle,	TargetTitle,% new_hW_TLsTr
(!TargetTitle? (return,r:="") : (new_tt:=TargetTitle))
winget,new_PN,		ProcessName,%new_hW_TLsTr%
winget,new_PiD,		pid,% new_hW_TLsTr
WinGet,new_path,	ProcessPath,%new_hW_TLsTr%
winget,new_style,	Style,% new_hW_TLsTr
winget,new_exstyle,	ExStyle,% new_hW_TLsTr
controlget,neWCstyle,style,,ahk_id %A_New_McTLhW%
controlget,neWeXCstyle,exstyle,,ahk_id %A_New_McTLhW%
mousegetpos,,,,neWCname 
if minholder
	for,i,element in minholder,{
		if (minholder[i].pth = new_path) {
			mindetected:= True
			continue,
	}	}

menu_Style_main:
if ((new_PN="ApplicationFrameHost.exe") && new_TT)
	switch,new_tt {
		case,"Camera": new_PN:= "WindowsCamera.exe", new_path:= "C:\Program Files\WindowsApps\Microsoft.WindowsCamera_2021.105.10.0_x64__8wekyb3d8bbwe\WindowsCamera.exe"
		case,"Snip & Sketch": new_PN:= "ScreenSketch.exe", new_path:= "C:\Program Files\WindowsApps\Microsoft.ScreenSketch_10.2008.2277.0_x64__8wekyb3d8bbwe\ScreenSketch.exe"
	}
menu,p0,add,%	"Close Window",StyleMenHanglah
menu,p0,icon,%	"Close Window",% "C:\Icon\256\Oxygeclose.ico",,48

menu,F,Add,%	"> " new_PN " >",:p0
menu,F,Add,%	shit:=("&Open > " . a:=(instr(new_PN,"AutoHotkey")? (add:="script" ): (add:= new_PN)) . "'s path"),% "StyleMenHanglah"
if new_hicon:= ICO2hicon(new_path) { ; 10% of icons not pulling
	copy:=	dllcall("CopyIcon","Ptr",new_hicon,"Ptr")
	menu,F,icon,%	"> " new_PN " >",% "HICON: " copy,,48
	menu,F,icon,%	shit,% "HICON: " new_hicon,,48
 } else {
	menu,F,icon,%	"> " new_PN " >",% "C:\Icon\48\ss_48.ico",,48
	menu,F,icon,%	shit,% "C:\Icon\48\ss_48.ico",,48
}
if !instr(AEWhiteCl,(new_cl . ",")) {
	menu,F,Add,	Enable AeroGlass,StyleMenHanglah
	menu,F,icon,Enable AeroGlass,C:\Icon\256\fav.ico,,48
} else,if	(instr(AEWhiteCl,(new_cl . ","))) {
	tt("ttt " aewhitecl "`n`n`n" new_cl)
	menu,F,Add,% "Disable AeroGlass",StyleMenHanglah
	try menu,F,icon,% "Disable AeroGlass",C:\Icon\256\fav.ico,,48
}
for index,element in mwheeldrag
	if (index=new_PN)
		if (mwheeldrag[index] = "mouselockdrag") {
			mouselockdrag:= True
			menu,F,Add,%  "Remove mouselockdrag wheel",	StyleMenHanglah
			menu,F,icon,% "Remove mouselockdrag wheel",% "C:\Icon\256\undo.ico",,48
		} else if !mouselockdrag {
			menu,F,Add,%  "Add mouselockdrag wheel",	StyleMenHanglah
			menu,F,icon,% "Add mouselockdrag wheel",%	"C:\Icon\256\fav.ico",,48
}

for,index,element in mwheeldrag
	if (index=new_PN)
		if (mwheeldrag[index] = "mousedragwh")
			mousedragwh:= True
if mousedragwh {
	menu,F,Add,%  "Remove mousedrag wheel",StyleMenHanglah
	menu,F,icon,% "Remove mousedrag wheel",% "C:\Icon\256\undo.ico",,48
} else if !mousedragwh {
	menu,F,Add,%  "Add mousedrag wheel",StyleMenHanglah
	menu,F,icon,% "Add mousedrag wheel",% "C:\Icon\256\fav.ico",,48
}
menu,S0,Add,% StyleMenArr["Sys_Menu"],StyleMenHanglah
if (new_style  &0x00080000)
	 menu,S0,	check,%	  StyleMenArr["Sys_Menu"]
else,menu,S0,	uncheck,% StyleMenArr["Sys_Menu"]
	 menu,S0,	add,%	  StyleMenArr["Clickthru"],StyleMenHanglah
if (new_exstyle &0x00000001)
	menu, S0,	check,%	StyleMenArr["Clickthru"]
else,menu,S0,	icon,%	StyleMenArr["Clickthru"],%  "C:\Icon\256\APP_COG.ico",,48
	 menu,S0,	add,%	StyleMenArr["AppWindow"],StyleMenHanglah
if (new_exstyle &0x00040000)
	 menu,S0,	check,%	StyleMenArr["AppWindow"]
else,menu,S0,	icon,%	StyleMenArr["AppWindow"],%  "C:\Icon\256\progRe55752_2.ico",,48
goto,menus_subitem

Submenus:
menu,p0,	add,%	"Kill Process",	StyleMenHanglah
menu,p0,	icon,%	"Kill Process",% "C:\Icon\256\Oxygen-Icons.org-Oxygen-Actions-dialog-close.ico",,48
if mindetected { ;if (TRAYPIDpRESENT(new_PiD)) ||  {
	menu,p0,add,%	"Minimize Window 2 existing Tray",StyleMenHanglah
	menu,p0,icon,%	"Minimize Window 2 existing Tray",% "C:\Icon\256\sort.ico",,48
} else {
	menu,p0,add,%	"Minimize Window 2 new Tray",StyleMenHanglah
	menu,p0,icon,%	"Minimize Window 2 new Tray",% "C:\Icon\256\sort.ico",,48
}
menu,p0,add,%	"Kidnap window",StyleMenHanglah
menu,p0,icon,%	"Kidnap window",% "C:\Icon\256\Oxygen-Icons.org-Oxygen-Actions-dialog-close.ico",,48
menu,p0,add,%	"dOck-2-dToP",StyleMenHanglah
menu,p0,icon,%	"dOck-2-dToP",%	"C:\Icon\256\Oxygen-Icons.org-Oxygen-Actions-dialog-close.ico",,48
menu,S0,add,	Frame / & X Controls,:S1
menu,S0,icon,	Frame / & X Controls,%	"C:\Icon\256\previewpane.ico",,48
menu,S0,add,	Scrollbars,	:S2
menu,S0,icon,	Scrollbars,%	"C:\Icon\64ribbon\updown3264.ico",,48
menu,S0,add,	Layout,	:S3
menu,S0,icon,	Layout,%	"C:\Icon\256\Tetris.ico",,48
goto("menus_other")
return,

menus_subitem:
	 menu,	S1,add,%	"DLG Frame",% "StyleMenHanglah"
if(new_style	&0x00400000)
	menu,S1,	check,%	"DLG Frame"
else,menu,S1,	uncheck,% "DLG Frame"
	menu,S1,	Add,%	"THICK Frame",% "StyleMenHanglah"
if (new_style	&0x00040000)
	menu,S1,	check,%	"THICK Frame"
else,menu,S1,	icon,%	"THICK Frame",% "C:\Icon\256\APP_COG.ico",,48
	menu,S1,	Add,%	"Modal Frame",% "StyleMenHanglah"
if(new_exstyle	&0x00000001)
	menu,S1,	check,%	"Modal Frame"
else,menu,S1,	uncheck,% "Modal Frame"
	menu,S1,	Add,%	"Static edge",% "StyleMenHanglah"
if(new_exstyle	&0x00020000)
	menu,S1,	check,%	"Static edge"
else,menu,S1,	uncheck,% "Static edge"
	menu,S1,	Add,%	StyleMenArr["Maxbox"],% "StyleMenHanglah"
if (new_style	&0x00010000)
	menu,S1,	check,%	StyleMenArr["Maxbox"]
else,menu,S1,	uncheck,% StyleMenArr["Maxbox"]
	menu,S1,	Add,%	StyleMenArr["MinBox"],% "StyleMenHanglah"
if	(new_style	&0x00020000)
	menu,S1,	check,%	StyleMenArr["MinBox"]
else,menu,S1,	uncheck,% StyleMenArr["MinBox"]
	menu,S2,	Add,% "HScroll",% "StyleMenHanglah"
if	(new_style	&0x00100000)
	menu,S2,	check,%	"HScroll"
else,menu,S2,	icon,%	"HScroll"
	menu,S2,	Add,%	"VScroll",% "StyleMenHanglah"
if(new_style	&0x00200000)
	menu,S2,	check,%	"VScroll"
else,menu,S2,	uncheck,% "VScroll"
	menu,S2,	Add,%	StyleMenArr["LeftScroll"],% "StyleMenHanglah"
if(new_exstyle	&0x00004000)
	menu,S2,	check,%	StyleMenArr["LeftScroll"]
else,menu,S2,	uncheck,% StyleMenArr["LeftScroll"]
	menu,S3,	Add,%	StyleMenArr["RightAlign"],% "StyleMenHanglah"
if (new_exstyle	&0x00001000)
	menu,S3,	check,%	StyleMenArr["RightAlign"]
else,menu,S3,	uncheck,% StyleMenArr["RightAlign"]
	menu,S3,	Add,%	StyleMenArr["RightoLeft"],% "StyleMenHanglah"
if (new_exstyle	&0x00002000)
	menu,S3,	check,%	StyleMenArr["RightoLeft"]
else,menu,S3,	uncheck,% StyleMenArr["RightoLeft"]
menu,		S4,	Add,%	c_old:= c,% "StyleMenHanglah"
;-]-]-]-]-]-]-]-]-]-]-]-]-]-]-]-]-]-]-]-]-]-]-]-]-]-]-]-]-]-]-]-]-]-]-]-]-]-]-]-]
c1:= "DPI_AWARENESS_UNAWARE" ; :=0"~GDIDPISCALING DPIUNAWARE/DPIUNAWARE"=Override high DPI scaling-behavior
	; ( System Enhanced/ system)"
c2:= "DPI_AWARENESS_SYSTEM_AWARE" ; :=1"~HIGHDPIAWARE" = Override high DPI scaling behavior
	; ( Application managed scaling)
c3:= "DPI_AWARENESS_PER_MONITOR_AWARE" ; :=2~HIGHDPIAWARE" = Override high DPI scaling behavior
	; ( Application managed scaling) (Newer))
c := dllcall("GetAwarenessFromDpiAwarenessContext","int"
,dllcall("GetWindowDpiAwarenessContext","int",A_new_hWnd,"ptr"),"int")
switch,c {
	case,"-1" :	currentDPIhWnd:= "DPI_AWARENESS_INVALID = -1"
			try,menu,S4,rename,% c_old,% currentDPIhWnd ;i cant rem what this is 4
			return,
	case,"0" :	currentDPIhWnd:= "DPI_AWARENESS_UNAWARE = 0"
			Choices=%c1%|%c2%|%c3%
	case,"1" :	currentDPIhWnd:= "DPI_AWARENESS_SYSTEM_AWARE = 1"
			Choices=%c1%|%c2%||%c3%
	case,"2" :	currentDPIhWnd:= "DPI_AWARENESS_PER_MONITOR_AWARE = 2"
			Choices=%c1%|%c2%|%c3%||
	}
	try,menu,S4,rename,% c_old,% currentDPIhWnd
	menu,S4,Add,% "Set awareness context'->",StyleMenHanglah
	menu,S4,Add,% "registry:'DPI Layers'->",StyleMenHanglah
goto("Submenus")
return,

menus_other: ; below submenus
menu,F,add,	m2-Drag bypass,StyleMenHanglah
menu,F,Icon,	m2-Drag bypass,% "C:\Icon\48\m248.ico",,48
if (neWCname="SysTreeView321") {
	menu,F,add,% "Tree " . (instr(TVfixListPN,new_pn . ",")? "unCompose" : "Compose"),StyleMenHanglah
	menu,F,icon,% "Tree " . (instr(TVfixListPN,new_pn . ",")? "unCompose" : "Compose"),C:\Icon\256\Tree-2-256.ico,,48
}
menu,F,add,	DPI Behaviour,			:s4
menu,F,Icon, DPI Behaviour,%	"C:\Icon\256\progRe55752_2.ico",,48
menu,F,add,% "Style &`& &ExStyle",	:S0
menu,F,icon,% "Style &`& &ExStyle",% "C:\Icon\48\ss_48.ico",,48
if (UIBANDCLASS_CHECK(new_cl)) {
	menu,F,add,%  "Remove Z-Align UI-Band",StyleMenHanglah
	menu,F,Icon,% "Remove Z-Align UI-Band",% "C:\Icon\256\undo.ico",,48
} else {
	menu,F,add,%  "Z Align UI-Band",StyleMenHanglah
	menu,F,Icon,% "Z Align UI-Band",% "C:\Icon\256\#8611.ico",,48
}
menu,F,Add,% ((icon_PN_arr[new_PN])||(icon_cl_arr[new_cl]))? "Remove &icon":"Set &icon",StyleMenHanglah
menu,F,Icon,% ((icon_PN_arr[new_PN])||(icon_cl_arr[new_cl]))? "Remove &icon" 
: "Set &icon",% ((icon_PN_arr[new_PN])||(icon_cl_arr[new_cl]))? "C:\Icon\256\undo.ico" 
: "C:\Icon\48\updown48.ico",,48

menu,F,add,%	"&Save changes",	StyleMenHanglah
menu,F,icon,%	"&Save changes",%	"C:\Icon\128\kixtart2022.ico",,48
menu,F,add,%	"Get window text",	StyleMenHanglah
menu,F,icon,%	"Get window text",%	"C:\Icon\48\ren48.ico",,48
Gosub,StyleMenu_Show
return,

StyleMenHanglah() {
	global
	switch,a_thismenuitem {
		case,"Start/Restart"	: settimer,TRAYicons_init,-10
		case,"Stop anims"		: settimer,TRAYicons_destroy,-10
		case,"Launch AdHkRun"	: run,% comspec " /c " AdHkRun
		case,"dOck-2-dToP"		: Gosub,Window_Kidnap_2_dtop
		case,"Kidnap window"	: Gosub,Window_Kidnap
		case,"AHK_Pip3_eXEcut0r": PIPEEXEC()
		case,open : open:= "&Open > " new_PN "'s path"
			Gosub,APP_OpenCnt
		case,"kill process"		: settimer,Stylemen_Kilwin,-10
		case,"Close Window"		: _windowclose(new_hW_TLsTr)
		case,"Enable AeroGlass"	: settimer,AE_ADD2WL,-10
		case,"Disable AeroGlass": settimer,AE_ADD2BL,-10
		case,"Debug *.*"		: debugvarsgui()
		case,"DWM_ACCENT_FIX"	: DWM_ACCENT_FIX()
		case,"PsYch05i5"		: run,% psych0
		case,"1mgvi3w-4"		: run,% imgvi3w4
		case,"Colour picker"	: run,% "C:\Script\AHK\Working\color2.ahk"
		case,"SysColours view"	: run,% guisyscols
		case,"Explorahk"		: run,% "C:\Script\AHK\- _ _ LiB\CGUI_Examples-master\Explorer.ahk"
			sleep,10000
			xd:= WinExist(Explorer.ahk)
		case,"&Open > script's path" : hg:= getkeystate("LShift","T"), gh:= getkeystate("LCtrl","T")
			(GH=1||HG=1)? clipboard:= scriptpath(new_PiD) : open_containing(scriptpath(new_PiD)) 
			return,
		case,"K3y2eye"	: run,% K3y2eye:= "KeyHistory_input-log-uiSCI.ahk"
			sleep,2000
		case,"m2eye"	: run,% m2eye:= "C:\Script\AHK\Mouse_input-log-ui.ahk"
			sleep,2000
			return,
		case,"MAME64" 	: return,MameLaunch() 
		case,"tree uncompose": TVfixListPN:= strreplace(TVfixListPN,new_pn . ",")
		case, "tree compose" : (!instr(TVfixListPN, new_pn)? TVfixListPN .=new_pn . ",")
			open_containing(scriptpath(new_PiD))
		default: if instr(a_thismenuitem,".exe's") {
				hg:= getkeystate("LShift","T"), gh:= getkeystate("LCtrl","T")
				msgbox % hg "`n" GH
				(GH="1"||HG="1")? clipboard:= scriptpath(new_PiD) : open_containing(scriptpath(new_PiD))
			} else,settimer,%a_thismenuitem%,-10
			inited_stylemen:= False, StyleMenDel()
	}
	return,1
}

MameLaunch() {
	global MAME64unc
	static MameMane:= ({"w" : w:= 999
		,	"h" : h:= 999
		,	"x" : (a_screenwidth *.5)-(w*.5)
		,	"y" : (a_screenheight *.5)-(h*.5)})
	path:= (splitpath(MAME64unc)).dir
	run,% MAME64unc,% path,,mame_pid
	sleep,777
	winwait,% "ahk_pid " mame_pid
	try,hWnd:= winexist("ahk_pid " mame_pid)
	sleep,900
	win_move(hWnd,MameMane.x,MameMane.y,MameMane.w,MameMane.h,"")
}

; ~`~`~~`~;`~`~`~`~		~`~`~`~		~`~`~`~		~`~`~`  ~`~`~` ~`~`~	`~` ~`~ `~  ~`~`	~`~	`~`~`~	`~	`~`
;`~					  ~`~`~~`~`~`~`~`~``~`~``~`~`~`~`~`~`~`~`~`~`~`~`~
Menu_Tray_Init: ;=---- `~
;~~~~~~~^^;   ~@ []
try,menu,Tray,Deleteall ; menu,tray,new
menu,tray,NoStandard ; menu,tray,icon,% TrayIconPath ;menu,tray,	add,%	"Open Script Dir",		S_OpenDir
Menu,Tray,Icon
menu,tray,Icon,% "C:\Icon\64ribbon\home3264.ico",,48
menu,tray,add,%	"&Events (HookGui)",	EVENTHOOKGUI
menu,tray,icon,% "&Events (HookGui)",%	"C:\Icon\64ribbon\home3264.ico",,48
Gosub,submenuz
menu,tray,add,	,	; ~ ~ ~ ~ split; ~ ~ ~ ~ split; ~ ~ ~ ~ split; ~ ~ ~ ~ split
menu,tray,add,	Hooks,	:SubMenu0
menu,tray,icon,	Hooks,%	"C:\Icon\64ribbon\updown3264.ico",,48
menu,tray,add,	Services,	:SubMenu1
menu,tray,icon,	Services,%	"C:\Icon\cog4.ico",,48
menu,tray,add,	Settings,	:SubMenu4
menu,tray,icon,	Settings,%	"C:\Icon\cog4.ico",,48
menu,tray,add,	Tools,	:SubMenu5
menu,tray,icon,	Tools,%	"C:\Icon\cog4.ico",,48
menu,tray,add,	Explorer,	:SubMenu2, ;+Break
menu,tray,icon,	Explorer,%	"C:\Icon\48\EXPLORER_48.ico",,48
menu,tray,add,	Scripts,	:SubMenu3
menu,tray,icon,	Scripts,%	"C:\Icon\48\w33_48.ico",,48
menu,tray,add,	,	; ~ ~ ~ ~ split; ~ ~ ~ ~ split; ~ ~ ~ ~ split; ~ ~ ~ ~ split
Gosub,  ExpFolderContentTT ;menu,	tray,	Standard ; menu, Tray, NoStandard
menu,tray,Add ,%	"Open",				ID_VIEW_VARIABLES
menu,tray,Icon,%	"Open",%			"C:\Icon\64ribbon\regview3264.ico",,48
menu,tray,Add ,%	"Open Containing",	S_OpenDir
menu,tray,Icon,%	"Open Containing",%	"C:\Icon\256\#86_2.ico",,48
menu,tray,Add ,%	"Edit Script",		ID_TRAY_EDITSCRIPT
menu,tray,Icon,%	"Edit Script",%		"C:\Icon\256\np++Hackjob.ico",,48
menu,tray,Add ,%	"Reload",			ID_TRAY_RELOADSCRIPT
menu,tray,Icon,%	"Reload",%			"C:\Icon\256\IDI_ICON1.ico",,48
menu,tray,Add ,%	"Suspend VKs",		ID_TRAY_SUSPEND
menu,tray,Icon,%	"Suspend VKs",%		"C:\Icon\256\invert_goatse_256.ico",0,48
menu,tray,Add ,%	"Pause",			ID_TRAY_PAUSE
menu,tray,Icon,%	"Pause",%			"C:\Icon\24\head_fk_a_24_c2b.ico",,48
menu,tray,Add ,%	"Exit",				ID_TRAY_EXIT
menu,tray,Icon,%	"Exit",%			"C:\Icon\256\DOO0m.ico",,48
refresh_uptime_(onTray:=TRUE)
return,

submenuz:
menu,tranimen,add,% "Start/Restart", StyleMenHanglah ;anitrayrestart
menu,tranimen,icon,% "Start/Restart",% "C:\Icon\256\#1444.ico"
menu,tranimen,add,% "Stop anims",StyleMenHanglah
menu,tranimen,icon,% "Stop anims",% "C:\Icon\256\#5329.ico"
menu,expSystray,add,TrAnIconz,	:tranimen
menu,expSystray,icon,TrAnIconz,% "C:\Icon\256\DOO0m.ico"
;-=submenus-=submenus-=submenus-=submenus-=submenus-=submenus-=submenus-=submenus
menu,SubMenu0,add,%	"4ground hook tip",	TT4g,+Right
menu,SubMenu0,icon,% "4ground hook tip",% "C:\Icon\32\INFO_32.ico",,32
menu,SubMenu0,add,%	"focus hook tip",	TTFoc
menu,SubMenu0,icon,% "focus hook tip",% "C:\Icon\32\INFO_32.ico",,32
menu,SubMenu0,add,%	"ctl focus tip",	TTFocCTL_Toggle
menu,SubMenu0,% TTFocCTL?"check":"icon",ctl focus tip
,% TTFocCTL?():"C:\Icon\32\INFO_32.ico",,% !TTFocCTL?32:()
menu,SubMenu0,add,%	"obj_create tip",	TTcr
menu,SubMenu0,icon,% "obj_create tip",% "C:\Icon\32\INFO_32.ico",,32
menu,SubMenu0,add,%	"obj_destroy tip",	TTds
menu,SubMenu0,icon,% "obj_destroy tip",% "C:\Icon\32\INFO_32.ico",,32
menu,SubMenu0,add,%	"msgbox hook tip",	TTmb
menu,SubMenu0,icon,% "msgbox hook tip",% "C:\Icon\32\INFO_32.ico",,32
menu,SubMenu0,add,%	"Toggle debug",		SvcRestartWacom
menu,SubMenu0,icon,% "Toggle debug",%	"C:\Icon\32\INFO_32.ico",,32
menu,SubMenu1,add,%	"Restart sound",	SvcRestartSound
menu,SubMenu1,icon,% "Restart sound",%	"C:\Icon\48_24\sndvol_48_24_4.ico",,48
menu,SubMenu1,add,%	"Restart wacom",	SvcRestartWacom
menu,SubMenu1,icon,% "Restart wacom",%	"C:\Icon\cog4.ico",,48
menu,Exp_DTopTrayM,add,% "Desktop Area Custom",%	"Desktop_area_Set"
menu,Exp_DTopTrayM,add,% "Desktop Icon Labels",%	"Diconlablz_Toggle"
menu,submenu_explorer_cntxt,add,% "AeroGlass",%		"StyleMenHanglah"
if (ContextBG="AeroGlass")
	try,menu,submenu_explorer_cntxt,icon,% "AeroGlass",% "C:\Icon\256\ticAMIGA.ico",,48
menu,submenu_explorer_cntxt,add,% "Glass",%	"StyleMenHanglah"
if (ContextBG="Glass")
	try,menu,submenu_explorer_cntxt,icon,% "Glass",% "C:\Icon\256\ticAMIGA.ico",,48
menu,submenu_explorer_cntxt,add,% "Default",% "StyleMenHanglah"
if ((ContextBG="default")||!ContextBG)
try,menu,submenu_explorer_cntxt,icon,% "Default",% "C:\Icon\256\ticAMIGA.ico",,48
menu,SubMenu2,add,%	"ContextMenu BG",:submenu_explorer_cntxt
menu,SubMenu2,icon,% "ContextMenu BG",% "C:\Icon\256\#80_1.ico",,48
menu,SubMenu2,add,%	"Desktop",:Exp_DTopTrayM
menu,SubMenu2,add,%	"Folder-Content Tooltip",FolderContentsInfoTiptoggl,
menu,SubMenu2,icon,% "Folder-Content Tooltip",% "C:\Script\AHK\2.ico",,48
menu,SubMenu2,icon,% "Desktop",% "C:\Icon\- Icons\32\Recycle Bin - Envelope (full).ico",,48
menu,SubMenu2,add,%	"Icon spacing", iconspacing
menu,SubMenu2,icon,% "Icon spacing",% "C:\Icon\256\chem1.ico"
menu,SubMenu2,add,%	"SysTray", :expSystray
menu,SubMenu2,icon,% "SysTray",%			"C:\Icon\256\taskbar_network.ico",,32
;-=endExplorer-=endExplorer-=endExplorer-=endExplorer-=endExplorer-=endExplorer-=endExplorer
menu,SubMenu5,add,%	"Colour picker",		StyleMenHanglah
menu,SubMenu5,icon,% "Colour picker",%		"C:\Icon\256\pixelpisser.ico",,48
menu,SubMenu5,add,%	"CLSIDS Folders",		CLSIDS
menu,SubMenu5,icon,% "CLSIDS Folders",%		"C:\Icon\32\INFO_32.ico",,48
menu,SubMenu5,add,%	"AHK_Pip3_eXEcut0r",	StyleMenHanglah
menu,SubMenu5,icon,% "AHK_Pip3_eXEcut0r",% "C:\Icon\256\Autism5.ico",,48
menu,SubMenu5,add,%	"K3y2eye",				StyleMenHanglah
menu,SubMenu5,icon,% "K3y2eye",%			"C:\Icon\256\8ee.ico",,48
menu,SubMenu5,add,%	"m2eye",				StyleMenHanglah
menu,SubMenu5,icon,% "m2eye",%				"C:\Icon\256\8ee.ico",,48
menu,SubMenu5,add,%	"Debug *.*",			StyleMenHanglah
menu,SubMenu5,icon,% "Debug *.*",%			"C:\Icon\256\ICON22_1.ico",,48
menu,SubMenu5,add,%	"SysMetr",				SysMetr
menu,SubMenu5,icon,% "SysMetr",%			"C:\Icon\256\Simple(WShadow)256.7.ico",,48
menu,SubMenu5,add,%	"WM_Sifter",			wm_sift
menu,SubMenu5,icon,% "WM_Sifter",% 			"C:\Icon\256\tabsearc4h.ico",,48
;-=endTools-=endTools-=endTools-=endTools-=endTools-=endTools-=endTools-=endTools-=endTools
menu,SubMenu4,add,%	"clsids",				clsids
menu,SubMenu4,icon,% "clsids",%				"C:\Icon\256\d0x2.ico",,48
menu,SubMenu4,add,%	"Toggle Sidebar off",	Toggle_sbar
menu,SubMenu4,icon,% "Toggle Sidebar off",%	"C:\Icon\256\previewpane.ico",,48
menu,SubMenu4,add,%	"DWM_ACCENT_FIX",			StyleMenHanglah
menu,SubMenu4,icon,% "DWM_ACCENT_FIX",%		"C:\Icon\256\trusted.ico",,48
menu,SubMenu4,add,%	"LoadAeroRegKeyz",		AeroTheme_Set 
menu,SubMenu4,icon,% "LoadAeroRegKeyz",%	"C:\Icon\256\#19722.ico",,48
menu,SubMenu4,add,%	"Launch PowerConfig",	pconfig
menu,SubMenu4,icon,% "Launch PowerConfig",% "C:\Icon\256\ICON321_1.ico",,48
menu,SubMenu4,add,%	"Launch MattDWM",		mDWM2
menu,SubMenu4,icon,% "Launch MattDWM",%		"C:\Icon\256\#272.ico",,48
menu,SubMenu4,add,%	"monitor brightness ",	brightnessFloater
menu,SubMenu4,icon,% "monitor brightness ",%	"C:\Icon\256\#1491.ico",,48
menu,SubMenu4,add,%	"toggle aero on ahk",	aero2ahktoggle
menu,SubMenu4,% (!aero2ahk?"uncheck":"check"),% "toggle aero on ahk"
menu,SubMenu4,add,%	"SetSysCols",			syscols
menu,SubMenu4,icon,% "SetSysCols",%		"C:\Icon\256\pixelpisser.ico",,48
menu,SubMenu4,add,%	"SysColours view",		StyleMenHanglah
menu,SubMenu4,icon,% "SysColours view",%	"C:\Icon\256\pixelpisser.ico",,48
;-=endsettings-=endsettings-=endsettings-=endsettings-=endsettings-=endsettings-=endsettings
menu,SubMenu3,add,%	"np++ param insert",	NPInsert
menu,SubMenu3,icon,% "np++ param insert",% 	"C:\Icon\24\path55h.ico",,48
menu,SubMenu3,add,%	"aHk_RaR3",				ahk_rare
menu,SubMenu3,icon,% "aHk_RaR3",% "C:\Icon\256\lament cube hellraiser box COMP.ico",,48
menu,SubMenu3,add,%	"PsYch05i5",			StyleMenHanglah
menu,SubMenu3,icon,% "PsYch05i5",% 			"C:\Icon\256\Psy0wl.ico",,48
menu,SubMenu3,add,%	"1mgvi3w-4",			StyleMenHanglah
menu,SubMenu3,icon,% "1mgvi3w-4",%			"C:\Icon\256\eydeye.ico",,48
menu,SubMenu3,add,%	"Launch WMP_MATT",		WMPRun
menu,SubMenu3,icon,% "Launch WMP_MATT",%	"C:\Icon\256\wmp_zbuFS.ico",,48
menu,SubMenu3,add,%	"Explorahk",	StyleMenHanglah
menu,SubMenu3,icon,% "Explorahk",% "C:\Icon\256\explorer.ico",,48
menu,SubMenu3,add,%	"Launch midi_in_out",	MiDi_
menu,SubMenu3,icon,% "Launch midi_in_out",% "C:\Icon\256\apc40.ico",,48
menu,SubMenu3,add,%	"Launch AdHkRun",		StyleMenHanglah
menu,SubMenu3,icon,% "Launch AdHkRun",%	"C:\Icon\256\trusted.ico",,48,,48
menu,SubMenu3,add,%	"Launch YouTube_DL",	YT_DL
menu,SubMenu3,icon,% "Launch YouTube_DL",% "C:\Script\AHK\Working\YouTube_2.ico",,48
menu,SubMenu3,add,%	"Launch screen clean!",	CleanME
menu,SubMenu3,icon,% "Launch screen clean!",% "C:\Icon\256\total recall eye pop.ico",,48
menu,SubMenu3,add,%	"MAME64",StyleMenHanglah
menu,SubMenu3,icon,% "MAME64",% "C:\Icon\256\m4m3.ico",,48
return,

;  TRAY WM_Handler	;~~~~~~~^^; ; 0x00A5:; WM_nclRBUTTONUP ; 0x206:; WM_RBUTTONDBLCLK
AHK_NOTIFYICON(wParam, lParam) {	; 0x201: ; WM_LBUTTONDOWN   ; 0x202:; WM_LBUTTONUP
	;Thread,Priority,0 || ;Thread,Priority,7 ; 0x020B:; WM_XBUTTONDOWN
	switch,lParam {
		case,0x0200 : refresh_uptime_(True)	 ; WM_MOUSEmove
			; return,% Refresh_uptime_(True)
		case,0x204 : return,% MENSpunction() ; WM_RBUTTONDN
			;MENSpunction()
			return,
		case,0x203 : TT("Loading...") ; Timer("ID_VIEW_VARIABLES",-1);	WM_LBUTTONDBLCLK
			PostMessage,0x0111,%ID_VIEW_VARIABLES%,,,% (A_ScriptName " - AutoHotkey")
			winget,h,id,WinEvent.ahk - AutoHotkey
			Aero_BlurWindow(h)
		case,0x205 : return,(trayActiv?MENSpunction()) ;WM_RBUTTONUP
	;	case,0x0208:;	WM_MBUTTONUP	;;Timer("ID_TRAY_RELOADSCRIPT",-1); TT("Reloading... 1 sec",900); sleep,900; reload			; return
	}
	return,
}
;  TRAY WM_ ;^^^^^;
ID_TRAY_EXIT:
ID_TRAY_PAUSE:
ID_TRAY_SUSPEND:
ID_VIEW_VARIABLES:
ID_TRAY_EDITSCRIPT:
ID_TRAY_RELOADSCRIPT:
PostMessage,0x0111,(%a_thislabel%),,,% A_ScriptName " - AutoHotkey"
return,
; END / TRAY MENU / END / TRAY MENU / END / TRAY MENU / END / TRAY ;

Desktop_Area_Set:
Gosub,desktop_areacheck
  run((desktop_custom_enabled? desktop_area : desktop_area_remove))
return,

S_OpenDir:
APP_OpenCnt:
switch,a_thislabel {
	case,"S_OpenDir"	: target:= a_scriptFullPath
	case,"APP_OpenCnt"	: target:= new_path
	case,"xd"			: target:= "d:\new folder (2)"
	default				: target:= new_path
}
a_nu8:= Open_containing(target)
sleep,1000
return,

Oldscript_reset:
oldscript:= ""
return,

FF4:
winactivate,ahk_id %expOpenDirMatch%
SplitPath,target,,,OutExtension,OutNameNoExt
sleep,500 ; Flami := (OutNameNoExt . "." . OutExtension)
controlsend,DirectUIhWnd3,% (OutNameNoExt . "." . OutExtension),ahk_id %expOpenDirMatch%
return,

Menu_Style_Init:		;		Init Style/eXstyle Menu < way to visualise menus? >
_x:= ("|"),_y:= "£"	;			DeLimiterriNg
str_aL:= (	"Sys_Menu"	 . _y .	"""Title (+ & X Conrols) (SysMenu)"""
.	 _x .	"Maxbox"	 . _y .	"""Maximise Button (□)"""
.	 _x .	"MinBox"	 . _y .	"""Minimise Button (_)"""
.	 _x .	"LeftScroll" . _y . """Left Scroll Orientation"""
.	 _x .	"ClickThru"  . _y .	"""Click-through"""
.	 _x .	"RightAlign" . _y .	"""Generic Right-alignment"""
.	 _x .	"RightoLeft" . _y .	"""Right-to-Left reading"""
.	 _x .	"AppWindow"  . _y .	"""Taskbar Item (not 100%)"""
.	 _x .	"Save"		 . _y .	"""Save window style preferences"""
.	 _x .	"Reset"		 . _y .	"""Reset window style preferences""")
loop,	 parse,str_aL,%	   _x  ; -Parse
	loop,parse,A_loopfield,% _y
		switch,a_iNdex {
		  case,"1": LAyeBall:= A_loopfield				 ; label segment
			
		  case,"2": StyleMenArr[LAyeBall] := A_loopfield ; menu-txt segment
		}
		; for, index, element in StyleMenArr ; msgbox % index "`n" element
		; bum="sysmenu"  ;  msgbox % StyleMenArr["sys_menu"]
Return	; END
;	^-=___=-^				^-=___=-^				^--___=-^   ^   ~   ~   _   ¬   ¬   ¬   ¬   ¬   ¬   ¬   ¬   _
Varz:   ; 01010101010 ' ` ' `' `':C\Root\`'`'''`'      `''`0101'`'`'```''`'`'     ``'010101`''`'0xFFEEDD`'`'`'`'``'`'     			`''`''KILL!'`'` `'`
global AHKdir,a_time_scriptstart,TickSS,AF,AF2,AutoFireScript,Scr_,dbgtt,AutoFireScript2,TargetScriptTitle,TargetScriptTitle2,AF_Delay
,SysShadowStyle_New,SysShadowExStyle_New,toolx,offsett,XCent,YCent,starttime,text,X_X,Last_Title,autofire,RhWnd_old,MouseTextID,DMT,NPInsert
,roblox,toggleshift,Norm_menuStyle,Norm_menuexStyle,Title_Last,dcStyle,classname,tool,tooly,EventLogBuffer_Old,Roblox_hWnd,Time_Elapsed
,SBAR_2berestored_True,Sidebar,TT,TT4g,TTFoc,TTcr,TTds,TTmb,dbg,TClass,TTitle,TProcName,delim,delim2,TitleCount,style2,new_exstyle,ArrayProc
,ArrayClass,ArrayTitle,Array_LProc,Array_LTitle,Array_LClass,Style_ClassnameList2,Style_procnameList2,Style_wintitleList2,Youtube_Popoutwin
,Script_Title,np,m2dstatus,crashmb,8skin_crash,A_new_hWnd,F,s1,s2,s3,FileListStr,oldlist,FileCount,ADELIM,hTarget,hTargetprev,hgui,xPrev
,yPrev,hPrev,logvar,ADM_TtL,triggeredGFS,Matrix,Maxbox,MinBox,LeftScroll,ClickThru,RightAlign,RightoLeft,AppWindow,Save,Reset,MiDiRun

global MattDWMRun,Quoting,mmenuListTtl,MenuLablAr,MenuLablTitlAr,mmenuListLbl,Desk_Wi,Desk_Hi,FileListStr_Ar,wPrev,hidegui,q_dlim,quotes
,DEBUGTEST_hWnd,hook4g,HookMb,HookCr,HookOD,HookFc,DEBUGTEST_FOC,hook4g,Proc4g_,AhkPath,HookMb,ProcMb_,ProcCr_,ProcDstroyd,procFc_,nnd
,1998,1999,SkpO,old_focus1,old_focus2,old_focus3,old4gnd1,old4gnd2,old4gnd3,qstr,mDWM2,wm_sift,SBarPath,Path_PH,AHK_Rare,CleanME,Schd_T
,HKCUCV,styleKi,AdHkRun,PConfig,YT_DL,M2dRun,Mag_,DWMFixS,WMPRun,MiDiRun,MiDi_,adh,ScpW,MiDir,winevents,winevents_i,Split_Tail,Split_Head
,RiPpLe,ripoldm,t_x,t_Y,lo0,StyleMenArr,mouse24,wintitlekey,procnamekey,classnamekey,OBJ4g,OBJFc,OBJCR,OBJDS,MNPPS,WIN_TARGET_DESC
,MSG_WIN_TARGET,WINEVENT_SkpOROCESS,WINEVENT_OUTOFCONTEXT,OoC,Desktop_Margin,hooked_events,newhook,firefoxhandles,classeslast,clst_max_I
,Clss_,Pnamee_,AHkold,SysMetr,Contextmenu,sys32,srcunc,imgvi3w4,Choice,Chwn_,oldscript
global new_hW_TLsTr,old_classfocus2,old_classfocus1,old_classfocus3,old_classfocus4,hWnd4st,classhwlast,CLsS_Last,clsShWnd_L2,clht_max_I
,clht2_max_I,TBBUTTON,vCount,extension_set,alignment,Gui_W,GuiRolled,met_desc,copy,Gui_lastclass_W,Gui_lastclass_H,Gui_extended,Windle
,hookreadonly,count23,list_death,icon_clhw_arr,icon_cl_arr,icon_PN_arr,icon_tt_arr,icon_style_arrnew_PN,new_style,onlytt,onlypn,onlycl
,syscols,action_,act,typeid,IProcName,IClass,ITitle,pn_,cl_,tt_,mpos_rect,savePN,saveTT,saveCL,guic_trig,GUISYS_TB_Y,eventcr,eventfc
,event4g,eventmb,eventod,traycl,MAX_INDEX,st34m3n_hicon,GUI_EVENT_INIT,aids,S_OpenDir,phtreehWnd,shit,NPphWnd,contextBG,psych0
global a_Path,RTFCooldown,desktop_icon_labels,dICON_labelz,desktop_custom_enabled,DESKTOP_AREA_REMOVE,desktop_area_Set,ExpFolderContentTT
,32770ttlARR,tr9g,mwheeldrag,clst2_max_I,new_path,oldcnt,ZBID_UIACCESS,UIB_Handl,ouruibc,ANIPID,ani_concats,fff,TrayHolderExE
global Tray_IconInfoArr,TrayIconArr,detect_tray_pnames,mattinit,Tray_arr_target_pos,Tray_FullCount,tray_hWnd,tray_icon_pname_loaded
,tray_icon_Title_loaded,tray_icon_uid_loaded,Tray_MainCount,Tray_newTT,Tray_OverflowCount,Tray_Target_hicon,tray_target_hWnd
,tray_target_Parent,Tray_Target_PN,Tray_target_pos,tray_target_title,tray_target_tloc,tray_target_tlocm,tray_target_tt,tray_target_uid
,tray_target_UNCPath,trayhw,TTTParent,tpname,new_PiD,minholder,mindetected,npplus,Choices,__,hparent,i_handle,Handle ; YOU HANDLE BRADE ;
global ahkrare,AEahkWhite,AEahkBlack,TTFocCTL,trayActiv,clockTT,AEWhiteCl,AEBlackCl,wmpabortions,aero2ahk,ahkaerodbg,linenum,err_line,TVfixListPN
, ID_VIEW_VARIABLES:=65407,ID_TRAY_EDITSCRIPT:=65304,ID_TRAY_SUSPEND:=65305,ID_TRAY_PAUSE:=65306,ID_TRAY_EXIT:=65307, ID_TRAY_RELOADSCRIPT:= 65303,ahkpos,PIPEEXEC,ds,workerwpathrun,workerwpathchkrun,_Fx,BrightnessFloater
, MameMane:= object()
try,MameMane:= ({"w" : w:= 999
				,	"h" : h:= 999
				,	"x" : (a_screenwidth *.5)-(w*.5)
				,	"y" : (a_screenheight *.5)-(h*.5)})
 ;	^-=___=-^ 	 ;-=-=;'`'``''`'`'``''`'`'``''`'`'`
INITArrays:= "ArrayProc,ArrayClass,ArrayTitle,Array_LProc,Array_LTitle,Array_LClass,MenuLablAr,MenuLablTitlAr,FileListStr_Ar
,quotes,winevents_i,winevents,hooked_events,StyleMenArr,firefoxhandles,classeslast,classhwlast,CLsS_Last,clsShWnd_L2,Icon_clhw_arr,Icon_cl_arr
,Icon_PN_arr,Icon_tt_arr,Icon_style_arr,TrayIconArr,Tray_IconInfoArr,shit,32770ttlARR,mwheeldrag,ANIPID,minholder,ouruibc,sysmetric,met_desc"
loop,parse,% INITArrays, `,
	(%A_loopfield%):= [] ; array_inits:
UIB_Handl:=[{}]
INITArrays:=""
stylearr:= []								 ,stylexarr:= []
stylearr["toggle_sysmenu"]    :="^0x00080000", stylexarr["toggle_modalframe"]:="^0x00000001"
stylearr["toggle_DLGFRAME"]   :="^0x00400000", stylexarr["toggle_raisededge"]:="^0x00000100"
stylearr["toggle_thickframe"] :="^0x00040000", stylexarr["toggle_sunkenedge"]:="^0x00000100"
stylearr["toggle_border"]     :="^0x00040000", stylexarr["toggle_staticedge"]:="^0x00020000"
stylearr["toggle_MinBox"]     :="^0x00020000", stylexarr["toggle_3dedge"]    :="^0x00020000"
stylearr["toggle_Maxbox"]     :="^0x00010000", stylexarr["toggle_LeftScroll"]:="^0x00004000"
stylearr["toggle_hscroll"]    :="^0x00100000", stylexarr["toggle_Clickthru"] :="^0x00000020"
stylearr["toggle_vscroll"]    :="^0x00200000", stylexarr["toggle_RightAlign"]:="^0x00001000"
stylexarr["toggle_RightoLeft"]:="^0x00002000", stylexarr["toggle_AppWindow"] :="^0x00040000"
ahkpos:= {} ; listlines open script win-pos
ahkpos:= ({"X":1994, "Y":68, "W":1556, "H":985})
ahkpos:= ({"X":1994, "Y":68, "W":1556, "H":985})
clht_max_I:= clst_max_I:= clht2_max_I:= clst2_max_I:= 0
FormatTime,clockTT,A_now,% "dd MMMM yyyy`ndddd" ; clock tooltprecreation 4id sub
VarSetCapacity(mpos_rect,16)
Gui_extended	:= True
Gui_lastclass_W	:= 1010
Gui_lastclass_H	:= 1077
marginSz		:= 11 ; gui rel
ZBID_UIACCESS	:= 2
aero2ahk:=aids	:= 1

loop, 22 {			; -=-=;'`'``''`
	v1:= ("hChldMag" . a_iNdex)
	global	(%v1%)
	v2:= ("hgui" 	 . a_iNdex)
	global	(%v2%)
	v3:= ("hWndhgui" . a_iNdex)
	global	(%v3%)	; -=-=-;'`'``''`
}
;`'``''`'`'``''`'`'``''`'`'`'``;
;"!!!     vARi4bl3z !!!!" ...  ; ^-=___=-^	>>>>>>>>>>>>;??? ;	~@4w@~
;`'``''`'`'``''`'`'``''`'`'`'``;
__ := _n :=  "`n"
sysget,Desktop_Margin,MonitorWorkArea
sysget,Desk_Wi,78
sysget,Desk_Hi,79
XCent	:=  (floor(0.5*Desk_Wi))
YCent	:=  (floor(0.5*Desk_Hi))
npplus	:= "C:\Apps\np++_x86\notepad++.exe"
AHKdir	:=  "c:\program files\AutoHotkey"
AHk64	:=  (AHKdir . "\AutoHotkey.exe ")
AHkold	:=  "c:\program files\ahk\Autohotkey.exe "
ScpW	:=  "C:\Script\AHK\Working"
mDWM2	:=  "C:\Script\autoit\_MattDwmBlurBehindWindow.au3" ;Wrong dir envVar launched?
wm_sift:=  "C:\Script\AHK\GUI\WM_SIFTer.ahk"
SBarPath:=  "C:\Program Files\Windows Sidebar\sidebar.exe"
Path_PH	:=  "C:\Apps\Ph\processhacker\x64\ProcessHacker.exe"
NPInsert:=  "C:\Script\AHK\- Script\Notepad++ Insert AHK Parameters.ahk"
MAME64unc:= "S:\games\OLDIES\EMU\MAME\mame64.exe"
AHK_Rare:=  ((Scr_ := ("C:\Script\AHK")) . ("\- Script\AHK-Rare-master\AHKRareTheGui.ahk"))
CleanME	:=  ( Scr_ . "\white_full-screen_gui.ahk")
Schd_T	:=  ((sys32 := ("C:\Windows\system32")) . ("\schtasks.exe"))
HKCUCV	:=  "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion" 
styleKi	:=  "HKEY_CURRENT_USER\SOFTWARE\_Mouse2Drag\Styles"
syscols	:=  "C:\Script\AHK\- Script\syscolors.ahk"
ahkrare	:=  "C:\Script\ahk2\AHK-Rare-master\AHKRareTheGui.ahk"
Mag_Path =  "C:\Program Files\Autohotkey\AutoHotkeyU64_UIA.exe" "C:\Script\AHK\Working\M2DRAG_MAG.AHK"
explorer_opensave_DLG:="Open,Save,Save Image,Save As,Change Icon"
loop,parse,% explorer_opensave_DLG, `,
	32770ttlARR[ a_iNdex ] := a_loopfield
;  menulabels
S_OpenDir:=  a_scriptFullPath-=.
AdH		:= "aDHKi.ahk" ; || ADhKi.ahk_407642875
AdHk_R	:= AdHkRun	:= (sched_tsk:=(Schd_T . " /run /tn _anusss"))
PConfig	:= (sched_tsk  .  "cmd_output_to_msgbox.ahk_407642875")
YT_DL	:= (( (AHkU64Uia:= (AHKdir . "\AutoHotkeyU64_UIA.exe ")) . ScpW . "\YT.ahk" ))
Mag_	:= ( "C:\Program Files\Autohotkey\AutoHotkeyU64_UIA.exe" . " " . ScpW . "\M2DRAG_MAG.AHK")
; DWMFixS:= ( AHkU64UiaaDM := ((AHKdir . "\AutoHotkeyU64_UIA - admin.exe ")) . (Scr_ . "\Working\dwm_accentcolour.ahk"))
DWMFixS  =  "%AHKdir%\AutoHotkeyU64_UIA - admin.exe" %Scr_%"\Working\dwm_accentcolour.ahk"
;WMPRun  := ( AHkU64    .  Scr_ . "\Z_MIDI_IN_OUT\wmp_Matt.ahk")
WMPRun	:= ( AHk64 .  Scr_ . "\Z_MIDI_IN_OUT\wmp_Matt.ahk")
PIPEEXEC:= "C:\Script\AHK\execut0r.ahk"
guisyscols:= "C:\Script\AHK\GUi\GUIgetSysColour.ahk"
psych0:= (AHkU32Uia:= (AHKdir . "\AutoHotkeyU32_UIA.exe ") . "C:\Script\AHK\psychosis_UIBD.ahk")
MiDiRun	:= ( AHKdir	.  "AutoHotkeyU64.exe " . Scr_ . MiDir)
ADM_TtL	:= ( Scr_	.  "\" . adh . " - AutoHotkey v1.1")
YTdL_TtL:= ( Scr_	.  "\" . YT.ahk . " - AutoHotkey v1.1")
YT_DL	:= (((AHkU64Uia:= (AHKdir . "\AutoHotkeyU64_UIA.exe ")) . ScpW . "\YT.ahk"))
MiDi_	:= (AHkU64 . Scr_ . (MiDir:=("\Z_MIDI_IN_OUT" . "\z_in_out.ahk")))
SysMetr	:="C:\Script\AHK\sysget_(GUI).ahk", imgvi3w4:=AHk64 . "C:\Script\AHK\z_ConTxt\imag3view4.ahk"
M2dRun	:= ( AHkU64Uia .  Scr_ .  "\Working\M2Drag.ahk")
clsids	:= ( AHkU64	.  Scr_ . "\Explorer_CLSIDs_W10.ahk")
desktop_area_Set = %AHk64% "C:\Script\AHK\Desktop_Set-Workarea.ahk"
DESKTOP_AREA_REMOVE:= desktop_area_Set . "reset"
BF	:=	"Roblox_Rapid.ahk", BF2:= "Roblox_Bunny.ahk", af_1:= ("\" . BF),   Bun_:= ("\" . BF2)
AF	:=	(Scr_ . af_1), AF2:= (Scr_ . Bun_), AutoFireScript:= BF, AutoFireScript2:= BF2
TargetScriptTitle	:= (AutoFireScript . " ahk_class AutoHotkey"), contextBG:="AeroGlass"
TargetScriptTitle2	:= (AutoFireScript2 . " ahk_class AutoHotkey"), AF_Delay:= 10
SysShadowStyle_New	:= 0x08000000, SysShadowExStyle_New := 0x08000020, toolx:= "-66"
offsett	:= 40, delim:= "Þ", delim1:= "µ", delim2:= "»",KILLSWITCH:= "kill all AHK procs.ahk"
mouse24	:= "C:\Script\AHK\Working\mouse24.ico", OBJ4g:= 0x0003, OBJFc:=0x8005, OBJCR:= 0x8000
OBJDS	:= 0x8001, MNPPS:= 0x0006, WIN_TARGET_DESC:= "Information", MSG_WIN_TARGET:= WIN_TARGET_DESC,
WINEVENT_SkpOROCESS:= 0x0002, SkpO:= WINEVENT_SkpOROCESS, WINEVENT_OUTOFCONTEXT:= 0x0000,
OoC		:= WINEVENT_OUTOFCONTEXT, wintitlekey:= (styleKi . "\wintitle"),
procnamekey:= (styleKi . "\procname"), classnamekey:= (styleKi . "\classname")

Matrix :=(  "-1	|0	|0	|0	|0|"	;'``''getAncestors()
.           "0	|-1	|0	|0	|0|"	;``''`
.           "0	|0	|-1	|0	|0|"	;`''`'A_ScripthWnd
.           "0	|0	|0	|1	|0|"	;''`'`
.           "1	|1	|1	|0	|1 " )	;'`'`getDescendants()
donothing:
return,
;------------=========================++++++++++++++++++++*+*+*+*;------------=========================++++++++++++++++++++*+*+*+*
;------------=========================++++++++++++++++++++*+*+*+*;------------=========================++++++++++++++++++++*+*+*+*
init_matt:
if(!DiConLblz)
	loop,2
		Gosub("Diconlablz_Toggle")
funcClass_inits()
loop,parse,INIT_SEQ,>
	Gosub,% A_loopfield
Gosub,Desktop_areaCheck

(!(desktop_custom_enabled="")? (Gosub("DESKTOP_AREA")))
Timer("Desktop_areaCheck",-300)

;#include	<TrayIcon> ;#include *i WinEvent_func.ahk; 
;#include	C:\Script\AHK\- _ _ LiB\Open_Containing.ahk
#include	C:\Program Files\AutoHotKey\LIB\GDI+_All.ahk
#include	C:\Script\AHK\WinEvent_func.ahk
#include	<Quote_gen>
#include	<AERO_LIB>
; #include	<Struct>
#include	<TB>
return,

eventhookgui:
if	gui_event_init
	return,
#include *i %a_scriptdir%\wineventgui.ahk
gui_event_init:= True
return,
; debug tooltip message TRAY-MENU toggles
TT4g: ;TT4g := !TT4g debug tooltip message TRAY-MENU toggles
TTFoc: ;TTFoc := !TTFoc
TTcr: ;---------------------=======;TTcr := !TTcr
TTds: ;TTds := !TTds
TTmb: ;TTmb := !TTmb-
; if !%a_thislabel% {
	; %a_thislabel% := True
	; menu, tray, check,%    MenuLablTitlAr[a_thislabel]
; } else {
	; %a_thislabel% := False
	; menu, tray, UNcheck,%  MenuLablTitlAr[a_thislabel]
; }
TT_Off:
tooloff:
tooltip,
return,