   M S B A M L   `   `   `  ����F  BSalesModule, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:SalesModule.ViewsSalesModule.Views  5          SalesModule.Views.Item   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      1localclr-namespace:SalesModule.Views     5        � 	Resources  5	         ErrorTemplate  textBoxInError �� 
TargetType��%�   &	        &	 Z     �� 5   
   .R�5      �� 
���  ��$��2q�6'   ._�5      �� 5      5      �� 5   
   " ��6'   5      5      .��5      � -   5         �Name$ 
LayoutRoot��5   (   $��RightToLeft=�6   $��Stretch=�6<   $��Stretch=�6Z   $��0,0,0,0q�6v    � RowDefinitions 5   
   �� 5      $��35 �6   �� 5      $��40 �6   �� 5      $��40 �6   �� 5      $��40 �6   �� 5      $��40 �6   �� 5      $��40 �6   �� 5      $��40 �6   �� 5       $��40 �6   �� 5!      $��40 �6    � ColumnDefinitions 5#   
   �� 5$      $
��Auto �6   �� 5'      $��* �6   .+�5*   
   �� $��0��6   $��0��6!   $��
الكود��61   ���	#FF444444$��Center=�6U   $
��Auto��6p   $
��Auto��6}   $��Right=�6�   $��1��6�   $��5,0,0,0q�6�   �� 5+   
   -   5        $��SharesTextBox��5+   c   $��0��6   $��1��6!   4  .System.Windows.Automation.AutomationProperties   AutomationId$ SharesTextBox��61    =� ErrorTemplate# [  6  $��Stretch=�6N  $	��120��6l  $
��Auto��6x  $��Center=�6�  $��5,0,0,0q�6�  ��6x   �� *CurrrentItem.ID+ �� UpdateSourceTrigger$ PropertyChanged=� �� ValidatesOnExceptions . 	 �� NotifyOnValidationError	 . 
 �� ValidatesOnDataErrors
 . 6�  �� 5-   
   $��1��6   $��0��6!   $��إسم الصنف:��61   ���	#FF444444$��Right=�6Z   $��Center=�6v   $
��Auto��6�   $
��Auto��6�   $��5,0,0,0q�6�   �� 5.   
   -   5        $��txtName��5.      $ PriceLimitTextBox��6!   # [  6�   $��1��63  $��1��6@  $
��Left=�6P  $	��120��6k  $
��Auto��6w  $��Center=�6�  $��5,0,0,0q�6�  ��6W   �� *CurrrentItem.itemName+$ PropertyChanged=� . 	 . 
 . 6�  �� 50   
   $��2��6   $��0��6!   $��رقم الصنف:��61   ���	#FF444444$��Right=�6Z   $��Center=�6v   $
��Auto��6�   $
��Auto��6�   $��5,0,0,0q�6�   �� 51   
   -   5        $��txtItemNumberName��51      $ PriceLimitTextBox��6+   # [  6  $��2��6?  $��1��6L  $
��Left=�6\  $	��120��6w  $
��Auto��6�  $��Center=�6�  $��5,0,0,0q�6�  ��6a   �� *CurrrentItem.ItemNumber+$ PropertyChanged=� . 	 . 
 . 6�  �� 54   
   $��3��6   $��0��6!   $��Right=�61   $
��Auto��6M   $
��Auto��6Z   $��الكمية:��6h   ���	#FF444444$��Center=�6�   $��5,0,0,0q�6�   �� 55   
   -   5        $��txtCounr��55      $ PriceLimitTextBox��6"   # [  6�   $��3��65  $��1��6B  $
��Left=�6R  $	��120��6m  $
��Auto��6y  $��Center=�6�  $��5,0,0,0q�6�  ��6X   �� *CurrrentItem.ItemCount+$ PropertyChanged=� . 	 . 
 . 6�  �� 57   
   $��4��6   $��0��6!   $��Right=�61   $
��Auto��6M   $
��Auto��6Z   $��حد الخطر:��6h   ���	#FF444444$��Center=�6�   $��5,0,0,0q�6�   �� 58   
   -   5        $��txtMenimumCount��58      $ PriceLimitTextBox��6)   # [  6  $��4��6?  $��1��6L  $
��Left=�6\  $	��120��6w  $
��Auto��6�  $��Center=�6�  $��5,0,0,0q�6�  ��6_   �� *CurrrentItem.MenimumCount+$ PropertyChanged=� . 	 . 
 . 6�  �� 5:   
   $��5��6   $��0��6!   $��Right=�61   $
��Auto��6M   $
��Auto��6Z   $'��!اجمالي سعر الشراء:��6h   ���	#FF444444$��Center=�6�   $��5,0,0,0q�6�   �� 5;   
   -   5        $��txtTotalPrice��5;      $ PriceLimitTextBox��6'   # [  6  $��5��6;  $��1��6H  $
��Left=�6X  $	��120��6s  $
��Auto��6  $��Center=�6�  $��5,0,0,0q�6�  ��6]   �� *CurrrentItem.TotalPrice+$ PropertyChanged=� . 	 . 
 . 6�  �� 5=   
   $��6��6   $��0��6!   $��Right=�61   $
��Auto��6M   $
��Auto��6Z   $��وحدة البيع:��6h   ���	#FF444444$��Center=�6�   $��5,0,0,0q�6�   �� 5>   
   -   5         ��Name$ OrderTypeCombo��5>      $ OrderTypeComboBox��6+   $ �� IsSynchronizedWithCurrentItem$
 TrueY�6a    �� DisplayMemberPath$ UntPrice��6�   $��6��6/  $��1��6<  $	��400��6L  $
��Auto��6X  $��16(�6g  $
��Bold"�6u  $
��Left=�6�  $��5,0,0,0q�6�   �� SelectedValue 6�   ��  �� Path$ CurrrentItem.UnitPrice� �� Mode$ TwoWay=�$ PropertyChanged=���6  �� *
UnitsPrice+6�  �� 5@   
   $��7��6   $��0��6!   $��Right=�61   $
��Auto��6M   $
��Auto��6Z   $��سعر البيع:��6h   ���	#FF444444$��Center=�6�   $��5,0,0,0q�6�   �� 5A   
   -	   5        $��txtSuggestedPrice��5A      $ PriceLimitTextBox��6+   # [  6	  $��7��6C  $��1��6P  $
��Left=�6`  $	��120��6{  $
��Auto��6�  $��Center=�6�  $��5,0,0,0q�6�  ��6a   �� *CurrrentItem.SuggestedPrice+$ PropertyChanged=� . 	 . 
 . 6�  �� 5C   
   $��حفظ��6   $��8��6    $��1��6-   $	��200��6b   ��6=   �� *SaveItemCommand+6p   5D      5E      