FasdUAS 1.101.10   ��   ��    k             l     ��  ��    %  edit droplet if double clicked     � 	 	 >   e d i t   d r o p l e t   i f   d o u b l e   c l i c k e d   
  
 l      ��  ��    � �on run	try		tell application "Finder"			set myPath to path to me		end tell		with timeout of 10 seconds			tell application "Adobe Acrobat"				activate				delay 1				�event PRFLEDIT� myPath			end tell		end timeout	end tryend run     �  � o n   r u n  	 t r y  	 	 t e l l   a p p l i c a t i o n   " F i n d e r "  	 	 	 s e t   m y P a t h   t o   p a t h   t o   m e  	 	 e n d   t e l l  	 	 w i t h   t i m e o u t   o f   1 0   s e c o n d s  	 	 	 t e l l   a p p l i c a t i o n   " A d o b e   A c r o b a t "  	 	 	 	 a c t i v a t e  	 	 	 	 d e l a y   1  	 	 	 	 � e v e n t   P R F L E D I T �   m y P a t h  	 	 	 e n d   t e l l  	 	 e n d   t i m e o u t  	 e n d   t r y  e n d   r u n      l     ��������  ��  ��        i         I     ������
�� .aevtoappnull  �   � ****��  ��    k            l     ��  ��      prompt for files     �   "   p r o m p t   f o r   f i l e s      r         I    	���� 
�� .sysostdfalis    ��� null��    ��   !
�� 
prmp   m     " " � # # N P l e a s e   s e l e c t   t h e   P D F   p a g e s   t o   p r o c e s s : ! �� $��
�� 
mlsl $ m    ��
�� boovtrue��    o      ���� 0 thefiles theFiles   % & % l   ��������  ��  ��   &  '�� ' Q     ( )�� ( I    �� *���� 0 process_item   *  +�� + o    ���� 0 thefiles theFiles��  ��   ) R      ������
�� .ascrerr ****      � ****��  ��  ��  ��     , - , l     ��������  ��  ��   -  . / . l     �� 0 1��   0 . ( processes files dropped onto the applet    1 � 2 2 P   p r o c e s s e s   f i l e s   d r o p p e d   o n t o   t h e   a p p l e t /  3 4 3 i     5 6 5 I     �� 7��
�� .aevtodocnull  �    alis 7 o      ���� 0 these_items  ��   6 Q      8 9�� 8 I    	�� :���� 0 process_item   :  ;�� ; o    ���� 0 these_items  ��  ��   9 R      ������
�� .ascrerr ****      � ****��  ��  ��   4  < = < l     ��������  ��  ��   =  > ? > l     �� @ A��   @ ' ! this sub-routine processes files    A � B B B   t h i s   s u b - r o u t i n e   p r o c e s s e s   f i l e s ?  C D C i     E F E I      �� G���� 0 process_item   G  H�� H o      ���� 0 	this_item  ��  ��   F Q     4 I J�� I k    + K K  L M L O     N O N r     P Q P I   �� R��
�� .earsffdralis        afdr R  f    ��   Q o      ���� 0 mypath myPath O m     S S�                                                                                  MACS  alis    t  Macintosh HD               �B��H+   �p�
Finder.app                                                      �y�GЎ        ����  	                CoreServices    �C=i      �HA     �p� �p� �p�  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   M  T�� T t    + U V U O    * W X W k    ) Y Y  Z [ Z I   ������
�� .miscactvnull��� ��� null��  ��   [  \ ] \ I   !�� ^��
�� .sysodelanull��� ��� nmbr ^ m    ���� ��   ]  _�� _ I  " )�� ` a
�� .PRFLPRFL****      � **** ` o   " #���� 0 	this_item   a �� b��
�� 
PATH b o   $ %���� 0 mypath myPath��  ��   X m     c c�                                                                                  CARO  alis    �  Macintosh HD               �B��H+   SEAdobe Acrobat.app                                               SNt�)2        ����  	                Adobe Acrobat DC    �C=i      ���     SE �p�  >Macintosh HD:Applications: Adobe Acrobat DC: Adobe Acrobat.app  $  A d o b e   A c r o b a t . a p p    M a c i n t o s h   H D  /Applications/Adobe Acrobat DC/Adobe Acrobat.app   / ��   V m    ���� ��   J R      ������
�� .ascrerr ****      � ****��  ��  ��   D  d�� d l     ��������  ��  ��  ��       �� e f g h i������   e ������������
�� .aevtoappnull  �   � ****
�� .aevtodocnull  �    alis�� 0 process_item  �� 0 thefiles theFiles��  ��   f �� ���� j k��
�� .aevtoappnull  �   � ****��  ��   j   k 	�� "��������������
�� 
prmp
�� 
mlsl�� 
�� .sysostdfalis    ��� null�� 0 thefiles theFiles�� 0 process_item  ��  ��  �� *���e� E�O *�k+ W X  h g �� 6���� l m��
�� .aevtodocnull  �    alis�� 0 these_items  ��   l ���� 0 these_items   m �������� 0 process_item  ��  ��  ��  *�k+  W X  h h �� F���� n o���� 0 process_item  �� �� p��  p  ���� 0 	this_item  ��   n ������ 0 	this_item  �� 0 mypath myPath o 	 S�� c������������
�� .earsffdralis        afdr
�� .miscactvnull��� ��� null
�� .sysodelanull��� ��� nmbr
�� 
PATH
�� .PRFLPRFL****      � ****��  ��  �� 5 -� 	)j E�UOkn� *j Okj O��l UoW X  h i �� q��  q   r r�alis    �   Macintosh HD               �B��H+  t۩17 Assets to Prep.pdf                                          �_-ԿX(        ����  I                 �C=i      ԿȨ    ,  1 7   A s s e t s   t o   P r e p . p d f    M a c i n t o s h   H D  �Users/jlupini/Google Drive/Avocado Video/NutritionFacts/Prep Archive/Ben Videos/17 REDUCTIONISM Whole Food Supplements for Prostate Cancer - active/17 Assets to Prep.pdf   /    ��      ��  ��   ascr  ��ޭ