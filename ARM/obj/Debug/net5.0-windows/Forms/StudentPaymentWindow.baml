   M S B A M L   `   `   `  ����>  :ARM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:ARM.Forms	ARM.Forms  5   	   $    ARM.Forms.StudentPaymentWindow   5   	   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:ARM.Forms     5   	   -   5          � Title$  Платеж��5   	   $	��200��6   $	��497��6%    � WindowStartupLocation$ CenterScreen=�61    � 	Resources 5	         groupsViewSource��%   &	        �� 5
   
   6   5      .��5      � .+�5   
   �� -   5        $
��Left=�5   I   $��24��6d   $��	99,57,0,0q�6p    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   $	��354��6�   ��6   �� *Amount+ �� Mode$ TwoWay=� �� StringFormat$ N2��6�   (  "System.Windows.Controls.DatePicker  5   
      SelectedDateFormat$ Short=�6@   $
��Left=�6[   $��24��6v   $��	99,87,0,0q�6�   $	��Top=�6�   $	��354��6�      SelectedDate 6   �� *Date+$ TwoWay=�6�   �� 5   
   -   5         ��Name$ 
ButtonSave��5      $��Сохранить��6%   $
��Left=�69   $��219,127,0,0q�6T   $	��Top=�6i   $	��106��6�   6�   �� 5   
   -   5        $ ButtonCancel��5      $��Отмена��6'   $
��Left=�68   $��342,127,0,0q�6S   $	��Top=�6h   $	��111��6�   6�   �� 5   
   $��
Сумма��6   $
��Left=�6    $��	31,57,0,0q�6;   $	��Top=�6N   �� 5   
   $��Дата��6   $
��Left=�6   $��	31,87,0,0q�6:   $	��Top=�6M   5      5      