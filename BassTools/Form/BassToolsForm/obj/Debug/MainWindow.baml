   M S B A M L   `   `   `  ����H  DBassToolsForm, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:BassToolsFormBassToolsForm  5   	       BassToolsForm.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:BassToolsForm     5   	   -   5          � Title$  	Bass Tool��5   	   $	��450��6   $	��800��6(    � WindowStartupLocation$ CenterScreen=�5
   	   .��5      �  � RowDefinitions 5   
   �� 5      $
��0.1* �6   �� 5      $
��0.9* �6    � ColumnDefinitions 5   
   �� 5      $
��0.5* �6   �� 5      $
��0.5* �6   .+�5   
   �� $��0��6   $��0��6"   $��Center=�62   $��Center=�6O    �� Orientation$ 
Horizontal=�6j   .+�5      �� $��弦数��6   $��Center=�6!   $��10q�6<   �� 5      -   5         ��Name$ 
cbxString1��5      $��一弦��6+   $��Center=�68   $��5q�6S   �� 5      -   5        $ 
cbxString2��5      $��二弦��6+   $��Center=�68   $��5q�6S   �� 5      -   5        $ 
cbxString3��5      $��三弦��6+   $��Center=�68   $��5q�6S   �� 5      -   5        $ 
cbxString4��5      $��四弦��6+   $��Center=�68   $��5q�6S   5      �� 5   
   $��0��6   $��1��6"   $��Center=�62   $��Center=�6O   $ 
Horizontal=�6j   .+�5      �� -   5        $ cbxBPM��5      $��速度(BPM)/时间(s)��6'   $��Center=�6?   $��5,0,10,0q�6Z   6�   �� 5      -   5         ��Name$ lbBPM��5      $��时间��6#   �� 5      -   5         ��Name$ txtSpeed��5      $��Center=�6(   $��30��6C   $��0,0,10,0q�6N   �� 5       -	   5         ��Name$ btnStart��5       $��开始��6'   $��Center=�64   $��50��6O   6Z   5!      �� 5"   
   $��1��6   $��2��6"   $��Center=�66   $��Center=�6S   $ 
Horizontal=�6n   .+�5#      �� -
   5        $ lbClock��5#      $	��100(�6%   $��1��64   $��2��6A   $��Center=�6U   $��Center=�6w   5$      �� 5%   
   -   5        $ lbStringNum��5%      $	��200(�6%   $��1��64   $��0��6A   $��Center=�6Q   $��Center=�6s   �� 5&   
   -   5        $ lbSoundName��5&      $	��200(�6%   $��1��64   $��1��6A   $��Center=�6Q   $��Center=�6s   5'      5(      