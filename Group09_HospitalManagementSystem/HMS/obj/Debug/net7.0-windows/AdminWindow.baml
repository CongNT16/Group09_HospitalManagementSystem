   M S B A M L   `   `   `  ����>  :HMS, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:HMSHMS  5   	   7 clr-namespace:HMS.MVVM.ViewModelHMS.MVVM.ViewModel  5   	       HMS.AdminWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   #localclr-namespace:HMS     5   	   c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5   	   +vm clr-namespace:HMS.MVVM.ViewModel   5   	   $	��720��5
   	   $
��1180��6     � WindowStartupLocation$  CenterScreen=�5   	    � WindowStyle$
 None=�6.    � AllowsTransparency$
 True��5   	   
������  � 	Resources 5         	BoolToVis��%   &	        �� 5   
   6'   5       � DataContext 5      &    HMS.MVVM.ViewModel.AdminWindowVM  5   
   .��5      �� -   5        ���#eff2f7._�5   
   �  � ColumnDefinitions 5      �� 5      $	��200 �6#   �� 5      $��* �6#   .+�5      �  � RowDefinitions 5      �� 5      $
��auto �6$   �� 5       $��* �6$   .+�5%      �� $��1��6   ���#394867._�5&      ]� .+�5)      �� $��FPT Hospital��6$   
�������$��22(�6K   $��SemiBold"�6Y   $	��Top=�5*   (    �� TextAlignment$ Center=�6=   $��	5 25 0 10q�6T   �� 5+      $
��Hola��6$   ���#d0bfff$��14(�6E   $��SemiBold"�6S   $	��Top=�5,   (   $ Center=�6=   �� 5/      $��25q�6$   $	��Top=�60   $��1��6E   ���#7e5fde6P   �� 52      $	��Top=�6%   .+�53      ��   
menuButton#��[ 6%   ��6I   �� *UserDashboardViewCommand+.��54   "   ��  �� Orientation$ 
Horizontal=�6-   .+�55   &   .  (MahApps.Metro.IconPacks.PackIconMaterial  	   Kind$
	 Home=�6<     menuButtonIcon#��[ 6H   �� 56   &   $��	Dashboard��60   57   #   58      �� 5:      #��[ 6%   ��6I   �� *AdminDoctorsViewCommand+.��5;   "   �� $ 
Horizontal=�6-   .+�5<   &     $	 MotherNurse=�6<   #��[ 6O   �� 5=   &   $��Doctors��60   5>   #   5?      �� 5A      #��[ 6%   ��6I   �� *AdminDrugsViewCommand+.��5B   "   �� $ 
Horizontal=�6-   .+�5C   &     $	 
MedicalBag=�6<   #��[ 6N   �� 5D   &   $��Drugs��60   5E   #   5F      �� 5H      #��[ 6%   ��6I   �� *AdminTestsViewCommand+.��5I   "   �� $ 
Horizontal=�6-   .+�5J   &     $	 TestTube=�6<   #��[ 6L   �� 5K   &   $��Tests��60   5L   #   5M      �� 5O      #��[ 6%   ��6I   �� *AdminUsersViewCommand+.��5P   "   �� $ 
Horizontal=�6-   .+�5Q   &     $	 Account=�6<   #��[ 6K   �� 5R   &   $��Users��60   5S   #   5T      5V      �� 5X      -   5        #��[ 5X   !   $��Bottom=�6E   $��Bottom=�5Y   %   $��
15 0 15 20q�6=   .��5Z      �� $ 
Horizontal=�6)   .+�5[   "     $	 Logout=�68   #��[ 6F   �� 5\   "   $��Logout��6,   5]      5^      5`      5a      5b      � 5e      $��1��6   $��30 20 20 20q�6#    5f      �� 5g      $
��101* �6'   �� 5h      $
��209* �6'    5j      �� 5k      $��50 �6$   �� 5l      $
��auto �6$   �� 5m      $
��auto �6$   �� 5n      $
��auto �6$   �� 5o      $
��auto �6$   �� 5p      $��* �6$   �� 5q      $
��auto �6$   .+�5u      �� -   5          	topButton#��[ 5u      $��597,10,0,10q�6<   $��1��6m   .��5v        $	 Close=�6,   5w      �� 5y      -   5        #��[ 5y      $��562,10,0,10q�6<   $��1��6p   .��5z        $	 WindowMinimize=�6,   5{      �� 5      $��1��6   $��2��6*   .+�5�      �� $ 
Horizontal=�6!   $��Right=�6:   .+�5�      �� $��40��6!   $��40��6,   
 �� Padding$
 3q�68   ���#9BA4B5 �� CornerRadius$	 100��5�   !   $	��Top=�64   $��20 0 0 0q�6I   ._�5�      A� ��5�   "   �� 5�   &    �� ImageSource$ /Images/doctor.png��61   5�      5�      �� 5�      $��10 0 0 0q�6%   .+�5�      �� ���#394867$��14(�6�   $��SemiBold"�6�   $	��Top=�5�   (   ��5�   (   �� *CurrentUser.UserName+ �� RelativeSource ��  �� AncestorType
 Window5�   (   �� 5�      $��Doctors Management��6(   ���#9BA4B5$��14(�6W   $��SemiBold"�6e   $	��Top=�5�   (   5�      5�      5�      �� 5�      $��1��6   $��2��6'   ���#dae2ea$��0,54,0,0q�6I   $��2��6[   �� 5�      $��2��6   $ 
Horizontal=�6*   $��0 10 0 0q�6C   $��2��6U   .+�5�      �� $��Records��6     	tabButton#��[ 6/   ���#784ff26R   5�      �� 5�      $��5��6!   $��10,10,10,10q�5�      $��2��5�   =   ��6   �� *CurrentView+6=   5�      5�      5�      5�      