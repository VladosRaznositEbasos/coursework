   M S B A M L   `   `   `  ����>  :ARM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:ARM.Forms	ARM.Forms  5   	       ARM.Forms.EmployeeWindow   5   	   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:ARM.Forms     5   	   -   5          � Title$  Сотрудник��5   	   $	��259��6   $	��500��6(    � WindowStartupLocation$ CenterScreen=�64    � 	Resources 5	         departmentsViewSource  typesViewSource��%:   &	        &	      �� 5
   
   6   �� 5   
   6   5      .��5      � .+�5   
   �� $
��Left=�69   $��24��6T   $��
126,32,0,0q�6`    �� TextWrapping$
 Wrap=�6t   $	��Top=�6�   $	��354��6�   ��6   �� *
LastName+ �� Mode$ TwoWay=�6�   �� 5   
   $
��Left=�65   $��24��6P   $��
126,62,0,0q�6\   $
 Wrap=�6p   $	��Top=�6�   $	��354��6�   ��6   �� *Name+$ TwoWay=�6�   �� 5   
   $
��Left=�6;   $��24��6V   $��
126,92,0,0q�6b   $
 Wrap=�6v   $	��Top=�6�   $	��354��6�   ��6   �� *
MiddleName+$ TwoWay=�6�   �� 5   
    �� DisplayMemberPath$ Title��6�    �� SelectedValuePath$ Id��6�   $
��Left=�6�   $��126,122,0,0q�6�   $	��Top=�6�   $	��354��6   �� SelectedValue 6   �� *EmployeeTypeID+$ TwoWay=���6J   ��  �� Source# [ 6  �� 5   
   $ Title��6�   $ Id��6�   $
��Left=�6�   $��126,152,0,0q�6�   $	��Top=�6�   $	��354��6   6   �� *DepartmentId+$ TwoWay=���6H   �� # [  6  �� 5   
   -   5        	 ��Name$	 
ButtonSave��5      $��Сохранить��6%   $
��Left=�69   $��245,187,0,0q�6T   $	��Top=�6i   $	��106��6�   6�   �� 5   
   -   5        $	 ButtonCancel��5      $��Отмена��6'   $
��Left=�68   $��368,187,0,0q�6S   $	��Top=�6h   $	��111��6�   6�   �� 5   
   $��Фамилия��6   $
��Left=�6"   $��	23,32,0,0q�6=   $	��Top=�6P   �� 5   
   $��Имя��6   $
��Left=�6   $��	23,62,0,0q�69   $	��Top=�6L   �� 5   
   $��Отчество��6   $
��Left=�6#   $��	23,91,0,0q�6>   $	��Top=�6Q   �� 5   
   $��Тип��6   $
��Left=�6   $��
23,122,0,0q�69   $	��Top=�6M   �� 5   
   $��Кафедра��6   $
��Left=�6"   $��
23,152,0,0q�6=   $	��Top=�6Q   5      5      