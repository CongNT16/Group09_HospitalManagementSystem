   M S B A M L   `   `   `  ����>  :HMS, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:HMSHMS  5   	   7 clr-namespace:HMS.MVVM.ViewModelHMS.MVVM.ViewModel  5   	       HMS.NormalUserWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   #localclr-namespace:HMS     5   	   c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5   	   +vm clr-namespace:HMS.MVVM.ViewModel   5   	   $	��720��5
   	   $
��1280��6     � WindowStartupLocation$  CenterScreen=�5   	    � WindowStyle$
 None=�6.    � AllowsTransparency$
 True��5   	   
������  � 	Resources 5         	BoolToVis��%   &	        �� 5   
   6'   5       � DataContext 5      +   %HMS.MVVM.ViewModel.NormalUserWindowVM  5   
   .��5      �� -   5        ���#eff2f7._�5   
   �  � ColumnDefinitions 5      �� 5      $	��200 �6#   �� 5      $��* �6#   .+�5      �  � RowDefinitions 5      �� 5      $
��auto �6$   �� 5       $��* �6$   .+�5'      �� $��1��6   ���#394867._�5(      ]� .+�5,      �� $��FPT Hospital��6$   
�������$��22(�6K   $��SemiBold"�6Y   $	��Top=�5-   (    �� TextAlignment$ Center=�6=   $��	5 25 0 10q�6T   �� 5.      $
��Hola��6$   ���#9BA4B5$��14(�6E   $��SemiBold"�6S   $	��Top=�5/   (   $ Center=�6=   �� 52      $��25q�6$   $	��Top=�60   $��1��6E   ���#7e5fde6P   �� 55      $	��Top=�6%   .+�56      ��   
menuButton#��[ 6%   ��6I   �� *UserDashboardViewCommand+.��57   "   ��  �� Orientation$ 
Horizontal=�6-   .+�58   &   .  (MahApps.Metro.IconPacks.PackIconMaterial  	   Kind$
	 Home=�6<     menuButtonIcon#��[ 6H   �� 59   &   $��	Dashboard��60   5:   #   5;      �� 5=      #��[ 6%   ��6I   �� *UserPatientsViewCommand+.��5>   "   �� $ 
Horizontal=�6-   .+�5?   &     $	 AccountMultiple=�6<   #��[ 6S   �� 5@   &   $��Patients��60   5A   #   5B      �� 5D      #��[ 6%   ��6I   �� *UserAppointmentsViewCommand+.��5E   "   �� $ 
Horizontal=�6-   .+�5F   &     $	 CalendarClock=�6<   #��[ 6Q   �� 5G   &   $��Appointments��60   5H   #   5I      �� 5K      #��[ 6%   ��6I   �� *UserPrescriptionsViewCommand+.��5L   "   �� $ 
Horizontal=�6-   .+�5M   &     $	 Prescription=�6<   #��[ 6P   �� 5N   &   $��Prescriptions��60   5O   #   5P      �� 5R      #��[ 6%   ��6I   �� *UserBillingViewCommand+.��5S   "   �� $ 
Horizontal=�6-   .+�5T   &     $	 CashMultiple=�6<   #��[ 6P   �� 5U   &   $��Billing��60   5V   #   5W      5Y      �� 5[      -   5        #��[ 5[   !   $��Bottom=�6E   $��Bottom=�5\   %   $��
15 0 15 20q�6=   .��5]      �� $ 
Horizontal=�6)   .+�5^   "     $	 Logout=�68   #��[ 6F   �� 5_   "   $��Logout��6,   5`      5a      5c      5d      5e      � 5h      $��1��6   $��30 20 20 20q�6#    5i      �� 5j      $��50 �6$   �� 5k      $
��auto �6$   �� 5l      $
��auto �6$   �� 5m      $
��auto �6$   �� 5n      $
��auto �6$   �� 5o      $��* �6$   �� 5p      $
��auto �6$   .+�5t      �� -   5          	topButton#��[ 5t      $��0 0 0 0q�6<   $��Right=�6N   .��5u        $	 Close=�6,   5v      �� 5x      -   5        #��[ 5x      $��0 0 35 0q�6<   $��Right=�6N   .��5y        $	 WindowMinimize=�6,   5z      �� 5}      $��1��6   .+�5~      �� $ 
Horizontal=�6!   $��Right=�6:   .+�5      �� $��40��6!   $��40��6,   
 �� Padding$
 3q�68   ���#9BA4B5 �� CornerRadius$	 100��5�   !   $	��Top=�64   $��20 0 0 0q�6I   ._�5�      A� ��5�   "   �� 5�   &    �� ImageSource$ /Images/nurse.png��61   5�      5�      �� 5�      $��10 0 0 0q�6%   .+�5�      �� ���#394867$��14(�6�   $��SemiBold"�6�   $	��Top=�5�   (   ��5�   (   �� *CurrentUser.UserName+ �� RelativeSource ��  �� AncestorType
 Window5�   (   �� 5�      $��Patients Management��6(   ���#9BA4B5$��14(�6X   $��SemiBold"�6f   $	��Top=�5�   (   5�      5�      5�      �� 5�      $��1��6   $��3��6'   ���#dae2ea$��	0 -1 0 10q�6I   �� 5�      $��2��6   $ 
Horizontal=�6*   $��0 10 0 0q�6C   .+�5�      �� $��Records��6     	tabButton#��[ 6/   ���#394867$
��Left=�6h   5�      �� 5�      $��5��6!   $��10q�5�      ��5�      �� *CurrentView+5�      5�      5�      5�      