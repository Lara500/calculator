   M S B A M L   `   `   `  ����F  Bcalculator2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:calculator2calculator2  5   	       calculator2.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:calculator2     5   	     � Title$  
Kalkulator��5   	   $	��450��6   $	��800��6)   .��5	      �  � ColumnDefinitions 5
   
   �� 5      �� 5      �� 5      �� 5      �� 5       � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5      .+�5   
   �� $��5��6   ��6&   �� *	ScreenVal+�� 5   
   $��1��6   $��0��6   $��7��6.   $��7��6_   ��6:   �� *AddNumberCommand+6_   �� 5   
   $��1��6   $��1��6   $��8��6.   $��8��6_   ��6:   �� *AddNumberCommand+6_   �� 5   
   $��1��6   $��2��6   $��9��6.   $��9��6_   ��6:   �� *AddNumberCommand+6_   �� 5   
   $��2��6   $��0��6   $��4��6.   $��4��6_   ��6:   �� *AddNumberCommand+6_   �� 5   
   $��2��6   $��1��6   $��5��6.   $��5��6_   ��6:   �� *AddNumberCommand+6_   �� 5   
   $��2��6   $��2��6   $��6��6.   $��6��6_   ��6:   �� *AddNumberCommand+6_   �� 5   
   $��3��6   $��0��6   $��1��6.   $��1��6_   ��6:   �� *AddNumberCommand+6_   �� 5    
   $��3��6   $��1��6   $��2��6.   $��2��6_   ��6:   �� *AddNumberCommand+6_   �� 5!   
   $��3��6   $��2��6   $��3��6.   $��3��6_   ��6:   �� *AddNumberCommand+6_   �� 5"   
   $��4��6   $��0��6   $��2��6.   $��0��6B   $��0��6s   ��6N   �� *AddNumberCommand+6s   �� 5#   
   $��4��6   $��2��6   $��,��6.   $��,��6]   ��6:   �� *AddComaCommand+6]   �� 5$   
   $��1��6   $��3��6   $��/��6.   $��/��6b   ��6:   �� *AddOperationCommand+6b   �� 5%   
   $��2��6   $��3��6   $��-��6.   $��-��6b   ��6:   �� *AddOperationCommand+6b   �� 5&   
   $��3��6   $��3��6   $��*��6.   $��*��6b   ��6:   �� *AddOperationCommand+6b   �� 5'   
   $��4��6   $��3��6   $��C��6.   ��6:   �� *ClearScreenCommand+�� 5(   
   $��1��6   $��4��6   $��2��6.   $��+��6?   $��+��6s   ��6K   �� *AddOperationCommand+6s   �� 5)   
   $��3��6   $��4��6   $��2��6.   $��=��6?   ��6K   �� *GetResultCommand+5,      5-      