   M S B A M L   `   `   `  ����E  ASession_01, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Session_01
Session_01  5   	       Session_01.AdminPanel   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:Session_01     5   	     � Title$  
AdminPanel��5   	   $	��450��6   $	��800��6)   .��5	      �  � ColumnDefinitions 5
   
   �� 5      $	��23* �6   �� 5      $	��77* �6    � RowDefinitions 5   
   �� 5      $	��38* �6   �� 5      $
��355* �6   �� 5      $	��41* �6   .+�5   
   o� $��0��6   $��2��6   $��Center=�60   .@�5      �� $��5q�6   $��Add user��6!   �� 5      $��5q�6   $
��Exit��6!   5      �� 5   
   $��1��6   $��2��6"   .+�5      ��  �� Orientation$ 
Horizontal=�6   .+�5      �� $��Office: ��6   �� 5      5      &   System.Windows.Controls.DataGrid  5      $
��auto��6      Columns 5       0  *System.Windows.Controls.DataGridTextColumn  5!      ,  &System.Windows.Controls.DataGridColumn   Header$
 Name��6)      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 67   5#        5$      $ 	Last name��6)   $ * 6<   5&        5'      $	 Age��6)   $ * 66   5)        5*      $ 	User Role��6)   $ * 6<   5,        5-      $ Email Address��6)   $ * 6@   5/        50      $ Office��6)   $ * 69   52      54      55      �� 57   
   $��0��6   $��2��58      $��	20,5,20,5q�59      $	��Top=�5:      $��Change role��5;      �� 5<   
   $��1��6   $��2��5=      $��	20,5,20,5q�5>      $
��Left=�5?      $	��Top=�5@      $��Enable/Disable Login��5A      5B      5C      