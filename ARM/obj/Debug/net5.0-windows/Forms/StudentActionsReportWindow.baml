   M S B A M L   `   `   `  ����>  :ARM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:ARM.Forms	ARM.Forms  5   	   *    $ARM.Forms.StudentActionsReportWindow   5   	   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:ARM.Forms     5   	   -   5          � Title$   StudentActionsReportWindow��5   	   $	��625��6,   $	��800��69    � WindowStartupLocation$ CenterScreen=�6\    � 	Resources 5	         actionsViewSource  paymentsViewSource��%:   &	        &	      �� 5
   
   6   �� 5   
   6   5      .��5      � -   5         �Name$ 	GridPanel��5      .+�5   
   o� $��24��6   $	��Top=�6   .@�5      m� -   5         m�Name$ ButtonPrint��5      $��Печать��6,   $��24��6<   6H   5      � 5   
   -   5        $ 
GridReport��5      .+�5      �� -   5         ��Name$ LabelStudentFIO��5      $��Студент(ка): ��6-   $
��Left=�6E   $��	24,26,0,0q�6`   $	��Top=�6s   $	��713��6�   $
��Bold"�6�   �� 5      -   5        $ LabelStudentSpeciality��5      $"��Специальность: ��64   $
��Left=�6N   $��	24,56,0,0q�6i   $	��Top=�6|   $	��713��6�   $
��Bold"�6�   �� 5      -   5        $ LabelStudentGroup��5      $��Группа: ��6/   $
��Left=�6B   $��	24,86,0,0q�6]   $	��Top=�6p   $	��430��6�   $
��Bold"�6�   �� 5      -   5        $ LabelStudentDepartment��5      $��Кафедра: ��64   $
��Left=�6H   $��
24,116,0,0q�6c   $	��Top=�6w   $	��713��6�   $
��Bold"�6�   �� 5      -	   5        $ LabelStudentFaculty��5      $��Факультет: ��61   $
��Left=�6H   $��
24,146,0,0q�6c   $	��Top=�6w   $	��713��6�   $
��Bold"�6�   �� 5      -
   5        $ LabelStudentStatus��5      $��Статус: ��60   $
��Left=�6D   $��
24,176,0,0q�6_   $	��Top=�6s   $	��713��6�   $
��Bold"�6�   �� 5      -   5        $  LabelStudentSpecialityCost��5      $+��%Стоимость обучения: ��68   $
��Left=�6X   $��
24,206,0,0q�6s   $	��Top=�6�   $	��376��6�   $
��Bold"�6�   �� 5      -   5        $ LabelStudentPayments��5      $.��(Оплачено за обучение: ��62   $
��Left=�6T   $��477,206,0,0q�6o   $	��Top=�6�   $	��313��6�   $
��Bold"�6�   �� 5      -   5        $ LabelStudentIsGroupHead��5      $��Староста: ��65   $
��Left=�6K   $��
477,86,0,0q�6f   $	��Top=�6z   $	��280��6�   $
��Bold"�6�   �� 5      $3��-Активность студента(ки): ��6   $
��Left=�69   $	��Top=�6T   $	��713��6l   $
��Bold"�6x   $��	1,243,0,0q�6�   &   System.Windows.Controls.DataGrid  5      -   5          Name$ GridStudents��5         
IsReadOnly$
 True��6-      AutoGenerateColumns$ False��6?   $	��Top=�6[   $��	0,269,0,0q�6�   $	��148��6�   ��6s   �� 	 �� Source#	 [  
   Columns
 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   
Visibility$ Hidden=�6E   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6)   ��  �� Path$ Id�6E     5          Header$ Тип��6L      Width5  /System.Windows.Controls.DataGridLengthConverter$ 4* 6Y    6)   �� $ 	Type.Name�6Y     5!      $ Дата��6L   $ 3* 6Z    6)   �� $ 	DateBegin�6Z   5#      �� 5$      $'��!История платежей: ��6   $
��Left=�62   $	��Top=�6M   $	��713��6e   $
��Bold"�6q   $��25��6�   $��	1,432,0,0q�6�     5%      -   5        $ GridPayments��5%      $
 True��6-   $ False��6?   $��	0,458,0,0q�6�   $	��150��6�   $��Stretch=�6�   $	��Top=�6�   ��6[   �� #	 [ 
 5&        5'      $ Hidden=�6E    6)   �� $ Id�6E     5(      $ 
Сумма��6I   $ 4* 6X    6)   �� $ Amount�6X     5)      $ Дата��6G   $ 3* 6U    6)   �� $
 Date�6U   5+      5,      5-      5.      