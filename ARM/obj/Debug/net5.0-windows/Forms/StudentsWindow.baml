   M S B A M L   `   `   `  ����>  :ARM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:ARM.Forms.BaseARM.Forms.Base  5   	   %clr-namespace:ARM.Forms	ARM.Forms  5   	       ARM.Forms.StudentsWindow   5      \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -baseclr-namespace:ARM.Forms.Base     5   	   )localclr-namespace:ARM.Forms     5   	      ARM.Forms.Base.WindowBase    Loaded$  Window_Loaded��5	   3    � Title$ Студенты��6	   $	��450��6   $	��800��6'    � WindowStartupLocation$ CenterScreen=�6J    � 	Resources 5
         studentsViewSource  groupsViewSource��%:   &	        &	      �� 5   
   6   �� 5   
   6   5      .��5      � .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ StudentsGrid��5         
IsReadOnly$
 True��6)      AutoGenerateColumns$ False��6;      SelectionMode$ Single=�6�   $��0,91,0,0q�6�   ��6W   ��  �� Source# [  	   Columns	 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn
   
Visibility$
 Hidden=�6A   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   ��  �� Path$ Id�6A     5         Header$ Фамилия��6G      Width5  /System.Windows.Controls.DataGridLengthConverter$ 4* 6X    6%   �� $ LastName�6X     5      $ Имя��6C   $ 3* 6P    6%   �� $
 Name�6P     5      $ Отчество��6I   $ 4* 6[    6%   �� $ 
MiddleName�6[     5      $ Группа��6D   $ 2* 6T    6%   �� *
Group.Name+6T     5      $  Специальность��6O   $ 2* 6f    6%   �� *Group.Speciality.Name+6f     5      $ Телефон��6J   $ 2* 6[    6%   �� $ PhoneNumber�6[   4  .System.Windows.Controls.DataGridCheckBoxColumn  5      $ Староста��6N   $ 2* 6`    6)   �� $ IsGroupHead�6`   5      o� 5   
   $��24��6   $	��Top=�6   .@�5      m� -   5         m�Name$ 	ButtonAdd��5      $��Добавить��6*   $��24��6<   6H   m� 5      -   5        $ 
ButtonEdit��5      $ ��Редактировать��6+   6B   m� 5      -   5        $ ButtonDelete��5      $��Удалить��6-   6>   �� 5      $��6��6   ���	#FF464141���	#FF3C3939 J� OpacityMask
 �   �6Q   m� 5       -   5        $ ButtonChangeState��5       $#��Поменять статус��62   6K   m� 5!      -   5        $ ButtonPayments��5!      $��Платежи��6/   6@   m� 5"      -   5        $ ButtonReport��5"      $��
Отчёт��6-   6<   5#      �� 5$   
   -   5         ��Name$ 
TextBoxFIO��5$      $
��Left=�6&   $��	72,33,0,0q�6A    �� TextWrapping$
 Wrap=�6T   $	��Top=�6h   $	��253��6�   $��22��6�   �� 5%   
   $��Фамилия��6   $
��Left=�6"   $��	10,29,0,0q�6=   $	��Top=�6P   �� 5&   
   $��Группа��6   $
��Left=�6!   $��
352,29,0,0q�6<   $	��Top=�6P   �� 5'   
   -	   5         ��Name$ ComboboxGroup��5'       �� DisplayMemberPath$
 Name��6k    �� SelectedValuePath$ Id��6�   $
��Left=�6�   $��
417,31,0,0q�6�   $	��Top=�6�   $	��314��6�   $��22��6�   ��6*   �� # [ 6�   �� 5(   
   -
   5         ��Name$ ButtonClear��5(      $��Сбросить��6&   $
��Left=�69   $��
704,66,0,0q�6T   $	��Top=�6h   $��74��6�   6�   �� 5)   
   -   5        $ ButtonSearch��5)      $��
Поиск��6'   $
��Left=�67   $��
613,66,0,0q�6R   $	��Top=�6f   $��74��6~   6�   5+      5,      