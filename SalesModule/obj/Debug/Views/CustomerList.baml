   M S B A M L   `   `   `  ����F  BSalesModule, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:SalesModule.ViewsSalesModule.Views  5      $    SalesModule.Views.CustomerList   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      1localclr-namespace:SalesModule.Views     5        � 	Resources  5	         ErrorTemplate  textBoxInError �� 
TargetType��%�   &	        &	 Z     �� 5   
   .R�5      �� 
���  ��$��2q�6'   ._�5      �� 5      5      �� 5   
   " ��6'   5      5      .��5      � $��RightToLeft=�6    � RowDefinitions 5   
   �� 5      �� 5      .+�5   
   � $��0��6    5      �� 5      $��20 �6    �� 5      .+�5!      �� -   5        $��btnNewCustomer��5!      $��اضافة جديد��6+   $
��Left=�6@   $	��285��6[   $	��cst��6�   ��6g   �� *AddNewCustomerCommand+6�   �� 5"      $��0q�6   $
��Auto��6+   $��1��68    �� AlternationCount$ 2��5$   W   $ �� IsSynchronizedWithCurrentItem$
 TrueY�5%      4  .System.Windows.Automation.AutomationProperties   AutomationId$ PositionSummaryGrid��68   ��5#      ��  �� Path$ 	Customers� �� Mode$ TwoWay=� �� NotifyOnSourceUpdated . 	 �� NotifyOnTargetUpdated	 . 
 �� SelectedItem
 5$      �� $ CurrentPositionCustomer�$ TwoWay=� �� View 5&      �� 5'       �� AllowsColumnReorder .  �� ColumnHeaderToolTip$ Current positions��6:   .P�5*      �� $��
الكود��6)    �� Width$ 65��5,       �� DisplayMemberBinding 5+      �� *ID+5,      �� 5-      $��
الاسم��6)   $ 85��5/       5.      �� *CustomerName+5/      �� 50      $��رقم الهاتف��6)   $ 85��52       51      �� *CustomerPhone+52      �� 54      $��Actions��6)    �� CellTemplate 55      �� 56   "   .R�57   &   �  � ColumnDefinitions 58   *   �� 59   .   $��47 �6@   �� 5:   .   $��47 �6@   .+�5=   *   �� $��0��61   $	��cst��6�   $ ActionsBuyButton��6�     AddButtonTemplate#��[ 6   � Cursor$
 Hand��6;  $��30��6I  ��6A   �� $+ %DataContext.GetCurrentCustomerCommand� �� RelativeSource ��  �� AncestorType" ��6I  �� 5>   *   $��1��61   $ ActionsSellButton��6�     RemoveButtonTemplate#��[ 6  $
 Hand��6H  $��30��6W  ��6A   �� $ DataContext.SellCommand� �� " ����6�   �� $ TickerSymbol�6W  5@   '   5B   #   5D      5E      5G      5H      � 5J   
   $��1��6    5K      �� 5L      $��35 �6    �� 5M      $��40 �6    �� 5N      $��40 �6    �� 5O      $��40 �6    �� 5P      $��40 �6     5R      �� 5S      $
��Auto �6#   �� 5V      $��* �6#   .+�5Y      �� $��0��6   $��0��6%   $��
الكود��65   ���	#FF444444$��Center=�6Y   $
��Auto��6t   $
��Auto��6�   $��Right=�6�   $��1��6�   $��5,0,0,0q�6�   �� 5Z      -   5        $��SharesTextBox��5Z   6   $��0��6   $��1��6%    =� ErrorTemplate# [  6�   $��Stretch=�6,  $	��120��6J  $
��Auto��6V  $��Center=�6d  $��5,0,0,0q�6  ��6K   �� *CurrentPositionCustomer.ID+ �� UpdateSourceTrigger$ PropertyChanged=� �� ValidatesOnExceptions .  �� NotifyOnValidationError .  �� ValidatesOnDataErrors . 6  �� 5\      $��1��6   $��0��6%   $��الاسم:��65   ���	#FF444444$��Right=�6Z   $��Center=�6v   $
��Auto��6�   $
��Auto��6�   $��5,0,0,0q�6�   �� 5]      -   5        $��txtName��5]      # [  6�   $��1��6  $��1��6  $
��Left=�6.  $	��120��6I  $
��Auto��6U  $��Center=�6c  $��5,0,0,0q�6~  ��6&   �� *&$CurrentPositionCustomer.CustomerName+$ PropertyChanged=� .  .  . 6~  �� 5`      $��2��6   $��0��6%   $��Right=�65   $
��Auto��6Q   $
��Auto��6^   $��الهاتف:��6l   ���	#FF444444$��Center=�6�   $��5,0,0,0q�6�   �� 5a      -   5        $��txtPhone��5a      # [  6�   $��2��6  $��1��6  $
��Left=�6/  $	��120��6J  $
��Auto��6V  $��Center=�6d  $��5,0,0,0q�6  ��6&   �� *'%CurrentPositionCustomer.CustomerPhone+$ PropertyChanged=� .  .  . 6  �� 5c      $��حفظ��6   $��3��6$   $��1��61   $	��200��6j   ��6A   �� *SaveCustomerCommand+6x   5d      5f      5h      