   M S B A M L   `   `   `  ����I  EWpf_Dekstop_UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Wpf_Dekstop_UIWpf_Dekstop_UI  5   	       Wpf_Dekstop_UI.AddWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:Wpf_Dekstop_UI     5   	     � WindowStartupLocation$  CenterScreen=�5   	    � WindowStyle$
 None=�6.    � Title$ 	AddWindow��5	   	   $	��700��6   $	��700��6(    � 	Resources 5
       �� 
TargetType   RoundedButtonStyle �� Property �� Value �� 
TargetType ��Name	 �� CornerRadius
 J� SnapsToDevicePixels ��Name �� Triggers P� Property P� Value �� 
TargetName��%=  &	        �� 5   
   " ��6   .�5      ��  � �� 5      �� 5      " ��6&   .R�5      �� $ border��6!   $	 18��61   
����� �#��z��6Y   #��z��6�   $

 true��6�   ._�5      �� $ contentPresenter��6/   $|�False��6I   #��z��6[   #��z��6�   $
��True��6�   #
 z
 6�   #��z��6  5       5      P� 5       �@��IsDefaulted$
 true��6=   . �5   "   �� $ border��6@   # � ��6T    � ��5      P� 5       �@J�IsMouseOver$
 true��6=   . �5   "   �� $ border��6?    � �� �#EAB01E6S   �� 5   "   $ border��6@    � �� �#F1CA686T   5      P� 5       � ��$
 true��6;   . �5   "   �� $ border��6?    � ��
 �����6S   �� 5   "   $ border��6@    � ��
 �#�k�6T   5      5       5"      5#      5%       � DataContext 5&          Wpf_Dekstop_UI.AddWindowVM  5'   
   .��5)      �� 
����� �$��2q�6!   ._�5*   
   � ��5,      �� 5-       �� 
StartPoint$	 0,0&�6&    �� EndPoint$	 1,1&�67   .��5.      �  � Color$ Green��6#    � Offset$ 0Q�61   � 5/      $ 
LightGreen��6#   $	 0.2Q�66   � 50      $ Yellow��6#   $	 0.4Q�62   � 51      $ 	DarkGreen��6#   $	 0.6Q�65   � 52      $ Orange��6#   $	 0.8Q�62   53      .+�56      ]� $��30��6   $	��Top=�6%   .+�58      �� -   5        $��30��58      
��� � �$��25��67   $��Right=�6C   $	��Top=�6Z   $��Right=�6y   $��Center=�59      $��0,2,5,0q�6=   $��X��6N   6Z   �� 5:      -   5        $��30��5:      
��� � �$��25��67   $��Right=�6C   $	��Top=�6Z   $��Right=�6y   $��Center=�5;      $��0,2,5,0q�6=   $��_��6N   6Z   5<      �� 5>      $��40 20q�6   .+�5?      �� $��ADD STUDENT��6   $��	Castellar)�6/   $��45(�6F   $
��Bold"�6T   $��center=�5@       �� Padding$ 35q�61   
����� �6>   �� 5A       �� Orientation$ 
Horizontal=�6   .+�5B      �� $ 
Horizontal=�6!   .+�5C      �� $��
First Name��6$   $��15(�66   $��	10 20 0 0q�6D   $	��150��6W   �� 5D      $��10q�6"   $��	0 20 20 0q�60   $��15(�6C   $	��150��6Q   ��6]   �� *	FirstName+ �� UpdateSourceTrigger$ PropertyChanged=�5E      �� 5F      $ 
Horizontal=�6!   .+�5G      �� $��	Last Name��6$   $��15(�65   $��0 25 0 0q�6C   $��80��6U   �� 5H      $��10q�6"   $��	0 15 20 0q�60   $��15(�6C   $	��150��6Q   ��6]   �� *
LastName+$ PropertyChanged=�5I      5K      �� 5O      $ 
Horizontal=�6   $
��0 10q�66   .+�5P      �� $��Date of Birth��6    $��15(�65   $��	10 15 0 0q�6C   $	��150��6V   �� 5Q      $��10q�6   $��	0 15 20 0q�6,   $��15(�6?   $	��400��6M   ��6Y   �� *DateOfBirth+$ PropertyChanged=�5R      �� 5T      $ 
Horizontal=�6   $
��0 10q�66   .+�5U      �� $��	GPA Value��6    $��15(�61   $��	10 15 0 0q�6?   $	��150��6R   �� 5V      $��10q�6   $��	0 15 20 0q�6,   $��15(�6?   $	��400��6M   ��6Y   �� *
GpaValue+5W      �� 5Y      $ 
Horizontal=�6   $
��0 10q�66   .+�5Z      �� $��Telephone No.��6    $��15(�65   $��	10 15 0 0q�6C   $	��150��6V   �� 5[      $��10q�6   $��	0 15 20 0q�6,   $��15(�6?   $	��400��6M   ��6Y   �� *TelephoneNo+$ PropertyChanged=�5\      �� 5^      $ 
Horizontal=�6   $
��0 10q�66   .+�5_      �� $��Image No(as x.png)��6    $��15(�6:   $��	10 15 0 0q�6H   $	��150��6[   �� 5`      $��10q�6   $��	0 15 20 0q�6,   $��15(�6?   $	��400��6M   ��6Y   �� *	ImageNo+$ PropertyChanged=�5a      �� 5c      $
��Save��6   $��center=�6+   $��20(�6H   $	��200��6V   $��50q�6c   $��50��6o   #��[  5d   =   ��6   �� *AddStudentCommand+6=   5g      5j      5k      5l      