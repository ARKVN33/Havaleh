   M S B A M L   `   `   `  ����  Havaleh&     Havaleh.Windows.WinNotifyMessage   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -   5        $	��180��5   	   $	��300��6     � WindowStyle$
  None=�6"   $��20(�65    � 
ResizeMode$ NoResize=�6C   $��	B Nazanin)�6Y   
������  � AllowsTransparency .  � 	Resources 5         	OnLoaded1 �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value   EasingFunction0  *System.Windows.Media.Animation.QuinticEase7  1System.Windows.Media.Animation.EasingFunctionBase	   
EasingMode��%7  &	        �� 5	   
   .��5
      U� $ (FrameworkElement.Height)�6,   $
 Grid��6b   .\�5        $ 0��6'   $ 0Q�63    5        5      $	 EaseOut=�6&   5        5      $ 0:0:1��6'   $	 180Q�67    5        5      $	 EaseOut=�6&   5      5      5      5      
 � Triggers
 5      :� 5   
    :� RoutedEvent$ FrameworkElement.Loaded��6   .[�5      �� #��[  6   5      .��5      � -   5         �Name$
 Grid��5      $��RightToLeft=�6   $��Right=�65   $��Bottom=�6Q   $	��300��6l   $	��180��6x   .+�5    
   �� -   5        $��	Rectangle��5       ���	#FF06042E$��2��68   ��5!      �� 5"       �� EndPoint$ 0.5,1&�6&    �� 
StartPoint$ 0.5,0&�67   .��5#      �  � Color$ 	#FF2A3345��6#   � 5$      $ 	#FF111315��6#    � Offset$ 1Q�65   5%      5'      �� 5(   
   $��30��6   $��	0,10,18,0q�6     �� RadiusY$ 20��63    �� RadiusX$ 20��6@   $	��Top=�6M   ���	#FF06042E$��Right=�6x   $��30��6�   ��5)      �� 5*      $ 0.5,1&�6&   $ 0.5,0&�67   .��5+      � $ Black��6#   $ 1Q�61   � 5,      $ 	#FF0C307A��6#   $ 0.004Q�65   5-      5/      �� 51   
   -   5         ��Name$ LblNotifiction��51      $��105,50,10,0q�6-   $
��Wrap=�6B    �� TextAlignment$ Justify=�6V   $�� ��6n   $	��Top=�6v   
�������6�   �� 52   
   -   5        $ LblTitle��52      $��
105,15,0,0q�6'   $
��Wrap=�6;   $�� ��6O   $	��Top=�6W   
�������$
��Bold"�6�   $
��Left=�6�   $	��130��6�   �� 54   
   -   5         ��Name$ ImgNotifiction��54      $��74��6(   $��20,50,204,0q�64   $	��Top=�6I   �� 56   
   -   5         ��Name$ LblClose��56      $��×��6"   $	��Top=�6.   $��25(�6F   $��Arial)�6T   $��0,6,21,0q�6�    � Cursor$
 Hand��6�   $��30��6�   
�������$��Right=�6�   $��24��6�   58      59      