   M S B A M L   `   `   `  ����B  >Havaleh, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Havaleh.WindowsHavaleh.Windows  5   	       Havaleh.Windows.WinDriver   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:Havaleh.Windows     5   	   -   5        $	��476��5      $	��590��6     � WindowStartupLocation$  CenterScreen=�6*    � WindowStyle$
 None=�6O   $��20(�6b    � 
ResizeMode$ NoResize=�6p   $��	B Nazanin)�6�    � Triggers 5
      :� 5   
    :� RoutedEvent$ Window.Loaded��6   .[�5      �� .��5      �� .��5      W�  �� TargetProperty$ Opacity�6&    W� From$ 0X�6J   	 W� To$ 1X�6S    g� Duration$ 0:0:2D�6Z   	 g� FillBehavior$	 HoldEnd=�6k   5      5      5      .��5      � $��RightToLeft=�6   ���	#FFEEEEF2.+�5   
   �� -   5        ���	#FF192D6E$��0��5   '   ���	#FFEEEEF2$��30��6a   $	��Top=�6m   �� 5   
   -   5        
 ��Name$
 LblTitle��5      $(��"ثبت اطلاعات راننده��6"   $��22(�6?   $
��Bold"�6M   $��0q�6_   $	��Top=�6j      LabelStyle1#���   6�   $��30��6�   $��Center=�6�   �� 5   
   -   5         ��Name$ BtnClose��5      $��×��6#   $��35��6/   $��30��6:   $��22(�6F   $��Arial)�6T   $
��Left=�6u   $	��Top=�6�     ButtonStyle2#���  6�   �� 5   
   -   5        $ BtnMinimize��5      $��-��6&   $��35,0,0,0q�62   $��35��6D   $��30��6O   $��27(�6[   $��Arial)�6i   $
��Left=�6�   $	��Top=�6�     ButtonStyle3#���  6�   �� 5   
   ���	#FF192D6E$��2q�6)   $��10,35,10,10q�6=    �� CornerRadius$ 10��6R   �� 5   
   ���	#FF192D6E$��2q�6)   $��	20,45,0,0q�6=   $ 10��6P   $��84��6b   $	��Top=�6n   $
��Left=�6�   $	��550��6�   �� 5   
   -   5         ��Name$ TxtName��5      $��30��6#   $��
152,55,0,0q�6/    �� TextWrapping$
 Wrap=�6C   $	��Top=�6X     TextBoxStyle1#���  6p   $��2��6�    �� 	MaxLength$ 50��6�   $
��Left=�6�   $	��200��6�   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ DgdData��5      $��19,134,20,0q�6$     DataGridStyle1#���  69   ���	#FF192D6E$��2q�6�      AreRowDetailsFrozen .    
IsReadOnly .    GridLinesVisibility$ 
Horizontal=�6�      HorizontalGridLinesBrush �	#FF192D6E   AlternatingRowBackground �	#FFF1F4F7 �� AlternationCount$ 2��6<     SelectionMode$ Single=�6Q     AutoGenerateColumns .  -  'System.Windows.Input.KeyboardNavigation   TabNavigation$
 Once=�6�     CanUserSortColumns .  $	��252��6�  $	��Top=�6  ��6b   Z�    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$) #نام و نام‌خانوادگی��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$	 200 6A   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6M   �� *
DriverName+  5       $ شماره موبایل��6%   $	 120 6;    6G   �� *DriverMobile+  5!      $ شماره پلاک��6%   $	 130 69    6E   �� *NumberPlates+5$      �� 5%   
   -   5        $
 LblPersonnelSearch��5%      $��جست و جو:��6,   $
��Left=�6@   $��
19,391,0,0q�6[   $��30��6o   $	��Top=�6{   #���   6�   �� 5&   
   -	   5        $ 	TxtSearch��5&      $
��Left=�6%   $��30��6@   $��108,391,0,0q�6L   $
 Wrap=�6a   $	��Top=�6v   $	��462��6�   #���  6�   $��0��6�   $	 200��6�   6�   �� 5'   
   $*��$نام و نام‌خانوادگی:��6   $
��Left=�6.   $��	30,55,0,0q�6I   $	��Top=�6\   $��30��6t   #���   6�   �� 5(   
   -
   5        $ BtnAdd��5(      $��ثبت��6!   $��48,426,0,20q�6/     ButtonStyle1#���  6D   $
��Left=�6�   $	��120��6�    �� 	IsDefault . $��12��6�   �� 5)   
   -   5        $ BtnNew��5)      $��جدید��6!   $��423,426,0,0q�60   #���  6E   $��15��6�   $��30��6�   $	��Top=�6�   $
��Left=�6�   $	��120��6�   �� 5*   
   -   5        $ BtnEdit��5*      $��ویرایش��6"   $��173,426,0,0q�63   #���  6H   $
��Left=�6�   $	��120��6�   $��13��6�   $��30��6�   $	��Top=�6�   �� 5+   
   -   5        $ 	BtnDelete��5+      $��حذف��6$   $��298,426,0,0q�62   #���  6G   $��30��6�   $	��Top=�6�   $
��Left=�6�   $	��120��6�   $��14��6�   �� 5,   
   $ ��شماره شهربانی:��6   $
��Left=�6)   $��	43,90,0,0q�6D   $	��Top=�6W   $��30��6o   #���   6{   �� 5-   
   $��
ایران��6   $
��Left=�6    $��
257,90,0,0q�6;   $	��Top=�6O   $��30��6g   #���   6s   �� 5.   
   -   5        $ TxtNumberPlates��5.      $
��Left=�6+   $��30��6F   $��
152,90,0,0q�6R   $
 Wrap=�6f   $	��Top=�6{   $	��100��6�   #���  6�   $��10��6�   $ 6��6�   $��Center=�6�   �� 5/   
   -   5        $ TxtNumberPlates1��5/      $��30��6,   $��
301,90,0,0q�68   $
 Wrap=�6L   $	��Top=�6a   #���  6y   $��11��6�   $ 2��6�   $
��Left=�6�   $��51��6�   $��Center=�6�   �� 50   
   $��تلفن همراه:��6   $
��Left=�6&   $��
357,55,0,0q�6A   $	��Top=�6U   $��30��6m   #���   6y   �� 51   
   -   5        $ 	TxtMobile��51      $�� ��6%   $��30��6.   $��442,55,-21,0q�6:   $
 Wrap=�6P   $	��Top=�6e   #���  6}   $��7��6�   $ 11��6�   $��LeftToRight=�6�   $
��Left=�6�   $	��119��6�   53      54      