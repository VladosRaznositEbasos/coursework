   M S B A M L   `   `   `  ����>  :ARM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:ARM.Forms	ARM.Forms  5   	   /clr-namespace:ARM.Forms.BaseARM.Forms.Base  5   	   clr-namespace:ARMARM  5   	       ARM.Forms.UsersWindow   5   	   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:ARM.Forms     5   	   -baseclr-namespace:ARM.Forms.Base     5   	   !ARMclr-namespace:ARM     5   	      ARM.Forms.Base.WindowBase    Loaded$  Window_Loaded��5
   1    � Title$ Users��6	   $	��677��6   $
��1202��6$   $��14(�6H    � WindowStartupLocation$ CenterScreen=�6V    � 	Resources 5         usersViewSource��%   &	        �� 5   
   6   5      .��5      � .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ 	GridUsers��5         AutoGenerateColumns$ False��5         EnableRowVirtualization$
 True��5      $��0,24,0,0q�5   S   $��Center=�6e      SelectionMode$ Single=�6�   $��Center=�6�   ��6   ��  �� Source# [  	   Columns	 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn
   
Visibility$
 Hidden=�6<   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *Id+6<     5         Header$ 
Логин��6>      Width5  /System.Windows.Controls.DataGridLengthConverter$ 2* 6M      
IsReadOnly$
 True��6X    6%   �� *Name+6X     5      $ Фамилия��6B   $ 4* 6S   $
 True��6^    6%   �� *
LastName+6^     5      $ Имя��6C   $ 3* 6P   $
 True��6[    6%   �� *	FirstName+6[     5      $ Отчество��6D   $ 4* 6V   $
 True��6a    6%   �� *
MiddleName+6a   5      o� 5   
   $��24��6   $	��Top=�6   .@�5      m� -   5         m�Name$ 	ButtonAdd��5      $��Добавить��6*   $��24��6<   6H   m� 5      -   5        $ 
ButtonEdit��5      $ ��Редактировать��6+   6B   5      5      5       