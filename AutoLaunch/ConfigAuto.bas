PLUS3DOS �   l l                                                                                                         { 
  ; AutoLaunch by em00k '22 w  ; This file allows you to pick your autolaunch file along with backup, installing, uninstalling and restore defaults. 
 ��3     (m .browse f$ -t "TAP" -t "NEX" -t "BAS" -t "SN?" -t "Z80" -p "Select a file to autolaunch, SPACE for settings" 2 �f$=""��%100 < ; F �GetFile(f$)�f$ P �SaveCFG() Z � d �LoadCFG() n �ClearCFG() x � � ; � �GetFile(f$) �" ;-------- Get path and size of f$ �
  �8     �  �a$ �  �a$(1000  � ) �  �8    ,"V>a$" �  �#8     �  �#8    �s �  �"Length ";s �  �"Path : ";a$(�s-1    ) �  �"File : ";f$(1    �) �%   f$=a$(�s-1    )+" "+f$(1    �) � �=f$ � ; �SaveCFG() ;-------- Save Config  ���325  E   �6    ,"o>c:\sys\menu.cfg""  �#6    ,s,  �#6    ,f$6
  �6    @  �"Saved cfg file."A  �330  J E@  �"ERROR":�t=0     ��"Trying REMOUNT":t=1    :�:�:�"ERROR":�J �T ;^ �LoadCFG()h% ;------- Load path and file from cfgm  ��%ar
  �8    w  ���480  � |  �8    ,"c:\sys\menu.cfg"�  �#8    �l�  �l�
  �8    �  �"c:\sys\menu.cfg"�20    �   d$=�%a�(1    ,3    )�)   ;   a$ = BANK 20 PEEK$ (5, VAL (d$)-1)�!   a$=�%a�(�d$-2    ,~32     )�'   b$=�%a�(�(d$)+6    ,l-5    -�d$)�  �a$�  �b$�  �%a�� �� ;� �ClearCFG()� ; ------- Ask TO remove  �k  �'"c = Clear Autolaunch?"  �"i = Install Autolaunch?"&  �"u = Uninstall Autolaunch?"0  �'"Any other key to eixt":
  �5    D  �:; check keyI   �#0     �kN;   �k=�"c"��"c:\sys\menu.cfg":�"Deleting c:\sys\menu.cfg":�X!   �k=�"i"˓install():k=255  �  b#   �k=�"u"˓Uninstall():k=255  �  l   �kȯ" "�kǯ"z"��v ;    NEXT #0 TO k�  ��k=255  �  � �� ;� �Install()� ; backup files�  �a�  �Ask("Backup files?")�a�	  ���%750�  �a=2    ��%750�8  �"c:\nextzxos\autoexec.bas"�"c:\nextzxos\autoexec.bbk"�6  �"c:\nextzxos\enMenus.cfg"�"c:\nextzxos\enMenus.bak"� ; copy new files�	  ���%8104  �Ask("Overwrite Autoexec.bas?")�a:�a=2    ��%790-  �"-autoexec.bas"�"c:\nextzxos\autoexec.bas"3  �Ask("Overwrite enMenus.cfg?")�a:�a=2    ��%810 +  �"-enMenus.cfg"�"c:\nextzxos\enMenus.cfg"* �4 ;> �Uninstall()H ; Uninstall all this goopR2  �Ask("Uninstall AutoLaunch?")�a:�a=2    ��%920W  ���860  \ X  �"c:\nextzxos\enMenus.cfg"Y ;\1  �Ask("Restore enMenus.cfg?")�a:�a=2    ��%890a  ���883  s p6  �"c:\nextzxos\enMenus.bak"�"c:\nextzxos\enMenus.cfg"q ;s  ���890  z u  �"c:\nextzxos\autoexec.bas"v ;z2  �Ask("Restore Autoexec.bas?")�a:�a=2    ��%920  ���920  � �8  �"c:\nextzxos\autoexec.bak"�"c:\nextzxos\autoexec.bas"� ��	 �Ask(q$)�  �a�  �q$+"(y/n)"�  ��   �#0     �k�   �k=�"y"�a=1    �   �k=�"n"�a=2    �  ��a>0     � �=a� �" �"c:�utoLaunch�onfigAuto.bas"�%30