   M S B A M L   `   `   `  ����>  :ARM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:ARM.Forms	ARM.Forms  5   	        ARM.Forms.SpecialityWindow   5   	   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:ARM.Forms     5   	   -   5          � Title$   Специальность��5   	   $	��282��6   $	��559��6,    � WindowStartupLocation$ CenterScreen=�68    � 	Resources 5	         departmentsViewSource��%   &	        �� 5
   
   6   5      .��5      � .+�5   
   �� $
��Left=�65   $��24��6P   $��
173,21,0,0q�6\    �� TextWrapping$
 Wrap=�6p   $	��Top=�6�   $	��354��6�   ��6   �� *Name+ �� Mode$ TwoWay=�6�   �� 5   
   $
��Left=�66   $��24��6Q   $��
173,53,0,0q�6]   $
 Wrap=�6q   $	��Top=�6�   $	��354��6�   ��6   �� *Title+$ TwoWay=�6�   �� 5   
   $
��Left=�6;   $��24��6V   $��
173,81,0,0q�6b   $
 Wrap=�6v   $	��Top=�6�   $	��354��6�    � 
InputScope$ Number��6�   ��6   �� *
LearnMonth+$ TwoWay=�6�   �� 5   
    �� DisplayMemberPath$
 Name��6�    �� SelectedValuePath$ Id��6�   $
��Left=�6�   $��173,111,0,0q�6�   $	��Top=�6�   $	��354��6   �� SelectedValue 6   �� *DepartmentId+$ TwoWay=���6H   �� 	 �� Source#	 [  6  �� 5   
   $
��Left=�65   $��24��6P   $��173,143,0,0q�6\   $
 Wrap=�6q   $	��Top=�6�   $	��354��6�   $ Digits��6�   ��6   �� *Cost+$ TwoWay=�6�   �� 5   
   -   5        
 ��Name$
 CheckBox��5      $
��Left=�6T   $��24��6o   $��173,179,0,0q�6{   $	��Top=�6�   $	��354��6�    d� 	IsChecked 6%   �� *IsGroupHead+$ TwoWay=�6�   �� 5   
   -   5         ��Name$ 
ButtonSave��5      $��Сохранить��6%   $
��Left=�69   $��293,209,0,0q�6T   $	��Top=�6i   $	��106��6�   6�   �� 5   
   -   5        $ ButtonCancel��5      $��Отмена��6'   $
��Left=�68   $��415,209,0,0q�6S   $	��Top=�6h   $	��111��6�   6�   �� 5   
   $��Обозначение��6   $
��Left=�6&   $��	31,21,0,0q�6A   $	��Top=�6T   �� 5   
   $��Название��6   $
��Left=�6#   $��	31,51,0,0q�6>   $	��Top=�6Q   �� 5   
   $'��!Срок обучения(мес)��6   $
��Left=�6-   $��	31,81,0,0q�6H   $	��Top=�6[   �� 5   
   $��Кафедра��6   $
��Left=�6"   $��
31,111,0,0q�6=   $	��Top=�6Q   �� 5   
   $)��#Стоимость обучения��6   $
��Left=�6-   $��
31,141,0,0q�6H   $	��Top=�6\   �� 5   
   $��Активность��6   $
��Left=�6%   $��
31,171,0,0q�6@   $	��Top=�6T   5      5      