   M S B A M L   `   `   `  ����>  :ARM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:ARM.Forms	ARM.Forms  5   	   /clr-namespace:ARM.Forms.BaseARM.Forms.Base  5   	       ARM.Forms.MainWindow   5      \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:ARM.Forms     5   	   -baseclr-namespace:ARM.Forms.Base     5   	     � Title$  
MainWindow��5	   	   $	��620��6   $	��949��6)    � WindowStartupLocation$ CenterScreen=�65   .��5
      �  � RowDefinitions 5   
   �� 5      �� 5      �� 5       � ColumnDefinitions 5   
   �� 5      �� 5      �� 5      .+�5   
   �� -   5         ��Name$ ButtonSudents��5      $��Stretch=�6(   $��Stretch=�6M   $��Stretch=�6p   $��Stretch=�6�   $��22(�6�   $
��Bold"�6�   
���   ����	#FF040404$��5,5,5,5q�6�   $��1,1,1,1q�6   �� 	IsDefault$
 True��6   J� 	AllowDrop$
 True��6)  .��5      �  5      �� 5      $��6* �6$   �� 5      .+�5      �� $��0,0,0,37q�6   $��/Forms/student.jpg��6*   $
��Fill=�6F   $��2��6U   �� 5      $��Студенты��6   $��Center=�6+   $��1��6H   $��Center=�6U   $��16(�6p   $��Center=�6~   $	��Top=�6�   $��0,0,0,0q�6�   5      5      �� 5   
   -   5        $ ButtonGroups��5      $��Stretch=�6'   $��Stretch=�6L   $��22(�6o   $
��Bold"�6}   
���   ����	#FF040404$��4,5,7,5q�6�   $��1,1,1,1q�6�   $
 True��6�   $
 True��6�   $��1��6  .��5       �  5!      �� 5"      $��6* �6$   �� 5#      .+�5%      �� $��0,0,0,37q�6   $��/Forms/groups.jpg��6*   $
��Fill=�6E   $��2��6T   �� 5&      $��Группы��6   $��Center=�6)   $��1��6F   $��Center=�6S   $��16(�6n   $��Center=�6|   $	��Top=�6�   $��0,0,0,0q�6�   5'      5(      �� 5)   
   -   5        $ ButtonEmployee��5)      $��Stretch=�6)   $��Stretch=�6N   $��22(�6q   $
��Bold"�6   
���   ����	#FF040404$��4,5,6,5q�6�   $��1,1,1,1q�6�   $
 True��6�   $
 True��6�   $��2��6  .��5*      �  5+      �� 5,      $��6* �6$   �� 5-      .+�5/      �� $��0,0,0,37q�6   $��/Forms/employees.jpeg��6*   $
��Fill=�6I   $��2��6X   �� 50      $��Сотрудники��6   $��Center=�6-   $��1��6J   $��Center=�6W   $��16(�6r   $��Center=�6�   $	��Top=�6�   $��0,0,0,0q�6�   51      52      �� 53   
   -   5        $ ButtonSpecialities��53      $��Stretch=�6-   $��Stretch=�6R   $��22(�6u   $
��Bold"�6�   
���   ����	#FF040404$��4,7,6,4q�6�   $��1,1,1,1q�6�   $
 True��6�   $
 True��6�   $��2��6&  $��1��66  .��54      �  55      �� 56      $��6* �6$   �� 57      .+�59      �� $��0,0,0,37q�6   $��/Forms/specialities.jpg��6*   $
��Fill=�6K   $��2��6Z   �� 5:      $ ��Специальности��6   $��Center=�60   $��1��6M   $��Center=�6Z   $��16(�6u   $��Center=�6�   $	��Top=�6�   $��0,0,0,0q�6�   5;      5<      �� 5=   
   -   5        $ ButtonDepartments��5=      $��Stretch=�6,   $��Stretch=�6Q   $��22(�6t   $
��Bold"�6�   
���   ����	#FF040404$��4,7,7,4q�6�   $��1,1,1,1q�6�   $
 True��6�   $
 True��6�   $��1��6$  $��1��61  .��5>      �  5?      �� 5@      $��6* �6$   �� 5A      .+�5C      �� $��0,0,0,37q�6   $��/Forms/department.jpg��6*   $
��Fill=�6I   $��2��6X   �� 5D      $��Кафедры��6   $��Center=�6*   $��1��6G   $��Center=�6T   $��16(�6o   $��Center=�6}   $	��Top=�6�   $��0,0,0,0q�6�   5E      5F      �� 5G   
   -   5        $ ButtonFaculties��5G      $��Stretch=�6*   $��Stretch=�6O   $��22(�6r   $
��Bold"�6�   
���   ����	#FF040404$��4,7,6,4q�6�   $��1,1,1,1q�6�   $
 True��6�   $
 True��6�   $��1��6   .��5H      �  5I      �� 5J      $��6* �6$   �� 5K      .+�5M      �� $��0,0,0,37q�6   $��/Forms/faculties.png��6*   $
��Fill=�6H   $��2��6W   �� 5N      $��Факультеты��6   $��Center=�6-   $��1��6J   $��Center=�6W   $��16(�6r   $��Center=�6�   $	��Top=�6�   $��0,0,0,0q�6�   5O      5P      �� 5Q   
   -   5        $ ButtonUsers��5Q      $��Stretch=�6&   $��Stretch=�6K   $��22(�6n   $
��Bold"�6|   
���   ����	#FF040404$��4,1,6,9q�6�   $��1,1,1,1q�6�   $
 True��6�   $
 True��6�   $��2��6  .��5R      �  5S      �� 5T      $��6* �6$   �� 5U      .+�5W      �� $��0,0,0,37q�6   $��/Forms/users.jpg��6*   $
��Fill=�6D   $��2��6S   �� 5X      $��Пользователи��6   $��Center=�6/   $��1��6L   $��Center=�6Y   $��16(�6t   $��Center=�6�   $	��Top=�6�   $��0,0,0,0q�6�   5Y      5Z      5\      5]      