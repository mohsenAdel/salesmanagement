   M S B A M L   `   `   `  ����F  BSalesModule, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:SalesModule.ViewsSalesModule.Views  5      !    SalesModule.Views.ItemsList   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      1localclr-namespace:SalesModule.Views     5        � 	Resources  5	         ErrorTemplate  textBoxInError �� 
TargetType��%�   &	        &	 Z     �� 5   
   .R�5      �� 
���  ��$��2q�6'   ._�5      �� 5      5      �� 5   
   " ��6'   5      5      .��5      � $��RightToLeft=�6    � RowDefinitions 5   
   �� 5      �� 5      .+�5   
   � $��0��6    5      �� 5      $��20 �6    �� 5      .+�5!      �� -   5        $��
btnNewItem��5!      $��اضافة جديد��6'   $
��Left=�6<   $	��285��6W   $
��Item��6�   ��6c   �� *NavigateCommand+6�   �� 5"      $��0q�6   $
��Auto��6+   $��1��68    �� AlternationCount$ 2��5$   S   $ �� IsSynchronizedWithCurrentItem$
 TrueY�5%      4  .System.Windows.Automation.AutomationProperties   AutomationId$ PositionSummaryGrid��68   ��5#      ��  �� Path$ Items� �� Mode$ TwoWay=� �� NotifyOnSourceUpdated . 	 �� NotifyOnTargetUpdated	 . 
 �� SelectedItem
 5$      �� $ CurrentPositionItem�$ TwoWay=� �� View 5&      �� 5'       �� AllowsColumnReorder .  �� ColumnHeaderToolTip$ Current positions��6:   .P�5*      �� $��
الكود��6)    �� Width$ 65��5,       �� DisplayMemberBinding 5+      �� *ID+5,      �� 5-      $��
الاسم��6)   $ 85��5/       5.      �� *
itemName+5/      �� 50      $��الكمية��6)   $ 85��53       51      �� *	ItemCount+53      �� 56      $��وحدة البيع��6)   $ 85��59       57      �� *UnitPrice.UntPrice+59      �� 5;      $��سعر الوحدة��6)   $ 85��5>       5<      �� *SuggestedPrice+5>      �� 5F      $��Actions��6)    �� CellTemplate 5G      �� 5H   "   .R�5I   &   �  � ColumnDefinitions 5J   *   �� 5K   .   $��47 �6@   �� 5L   .   $��47 �6@   .+�5O   *   �� $��0��61   $
��Item��6�   $ ActionsBuyButton��6�     AddButtonTemplate#��[ 6   � Cursor$
 Hand��6<  $��30��6J  ��6A   �� $+ %DataContext.GetCurrentCustomerCommand� �� RelativeSource ��  �� AncestorType" ��6J  �� 5P   *   $��1��61   $ ActionsSellButton��6�     RemoveButtonTemplate#��[ 6  $
 Hand��6H  $��30��6W  ��6A   �� $ DataContext.SellCommand� �� " ����6�   �� $ TickerSymbol�6W  5R   '   5T   #   5V      5W      5Y      5Z      � 5\   
   $��1��6    5]      �� 5^      $��35 �6    �� 5_      $��40 �6    �� 5`      $��40 �6    �� 5a      $��40 �6    �� 5b      $��40 �6    �� 5c      $��40 �6    �� 5d      $��40 �6    �� 5e      $��40 �6    �� 5f      $��40 �6     5h      �� 5i      $
��Auto �6#   �� 5l      $��* �6#   .+�5o      �� $��0��6   $��0��6%   $��
الكود��65   ���	#FF444444$��Center=�6Y   $
��Auto��6t   $
��Auto��6�   $��Right=�6�   $��1��6�   $��5,0,0,0q�6�   �� 5p      -   5        $��SharesTextBox��5p   g   $��0��6   $��1��6%   $ SharesTextBox��65    =� ErrorTemplate# [  6  $��Stretch=�6Y  $	��120��6w  $
��Auto��6�  $��Center=�6�  $��5,0,0,0q�6�  ��6|   �� *CurrentPositionItem.ID+ �� UpdateSourceTrigger$ PropertyChanged=� �� ValidatesOnExceptions .  �� NotifyOnValidationError .  �� ValidatesOnDataErrors . 6�  �� 5r      $��1��6   $��0��6%   $��إسم الصنف:��65   ���	#FF444444$��Right=�6^   $��Center=�6z   $
��Auto��6�   $
��Auto��6�   $��5,0,0,0q�6�   �� 5s      -   5        $��txtName��5s      $ PriceLimitTextBox��6%   # [  6  $��1��6>  $��1��6K  $
��Left=�6[  $	��120��6v  $
��Auto��6�  $��Center=�6�  $��5,0,0,0q�6�  ��6[   �� *CurrentPositionItem.itemName+$ PropertyChanged=� .  .  . 6�  �� 5u      $��2��6   $��0��6%   $��رقم الصنف:��65   ���	#FF444444$��Right=�6^   $��Center=�6z   $
��Auto��6�   $
��Auto��6�   $��5,0,0,0q�6�   �� 5v      -   5        $��txtItemNumberName��5v      $ PriceLimitTextBox��6/   # [  6  $��2��6J  $��1��6W  $
��Left=�6g  $	��120��6�  $
��Auto��6�  $��Center=�6�  $��5,0,0,0q�6�  ��6e   �� * CurrentPositionItem.ItemNumber+$ PropertyChanged=� .  .  . 6�  �� 5y      $��3��6   $��0��6%   $��Right=�65   $
��Auto��6Q   $
��Auto��6^   $��الكمية:��6l   ���	#FF444444$��Center=�6�   $��5,0,0,0q�6�   �� 5z      -   5        $��txtCounr��5z      $ PriceLimitTextBox��6&   # [  6  $��3��6@  $��1��6M  $
��Left=�6]  $	��120��6x  $
��Auto��6�  $��Center=�6�  $��5,0,0,0q�6�  ��6\   �� *CurrentPositionItem.ItemCount+$ PropertyChanged=� .  .  . 6�  �� 5|      $��4��6   $��0��6%   $��Right=�65   $
��Auto��6Q   $
��Auto��6^   $��حد الخطر:��6l   ���	#FF444444$��Center=�6�   $��5,0,0,0q�6�   �� 5}      -   5        $��txtMenimumCount��5}      $ PriceLimitTextBox��6-   # [  6  $��4��6J  $��1��6W  $
��Left=�6g  $	��120��6�  $
��Auto��6�  $��Center=�6�  $��5,0,0,0q�6�  ��6c   �� *" CurrentPositionItem.MenimumCount+$ PropertyChanged=� .  .  . 6�  �� 5      $��5��6   $��0��6%   $��Right=�65   $
��Auto��6Q   $
��Auto��6^   $'��!اجمالي سعر الشراء:��6l   ���	#FF444444$��Center=�6�   $��5,0,0,0q�6�   �� 5�      -   5        $��txtTotalPrice��5�      $ PriceLimitTextBox��6+   # [  6  $��5��6F  $��1��6S  $
��Left=�6c  $	��120��6~  $
��Auto��6�  $��Center=�6�  $��5,0,0,0q�6�  ��6a   �� * CurrentPositionItem.TotalPrice+$ PropertyChanged=� .  .  . 6�  �� 5�      $��6��6   $��0��6%   $��Right=�65   $
��Auto��6Q   $
��Auto��6^   $��وحدة البيع:��6l   ���	#FF444444$��Center=�6�   $��5,0,0,0q�6�   �� 5�      -   5         ��Name$ OrderTypeCombo��5�      $ OrderTypeComboBox��6/   $
 TrueY�6e    �� DisplayMemberPath$ UntPrice��6�   $��6��6:  $��1��6G  $	��400��6W  $
��Auto��6c  $��16(�6r  $
��Bold"�6�  $
��Left=�6�  $��5,0,0,0q�6�   �� SelectedValue 6�   �� $# CurrentPositionItem.UnitPrice�$ TwoWay=�$ PropertyChanged=���6  �� *
UnitsPrice+6�  �� 5�      $��7��6   $��0��6%   $��Right=�65   $
��Auto��6Q   $
��Auto��6^   $��سعر البيع:��6l   ���	#FF444444$��Center=�6�   $��5,0,0,0q�6�   �� 5�      -	   5        $��txtSuggestedPrice��5�      $ PriceLimitTextBox��6/   # [  6  $��7��6N  $��1��6[  $
��Left=�6k  $	��120��6�  $
��Auto��6�  $��Center=�6�  $��5,0,0,0q�6�  ��6e   �� *$"CurrentPositionItem.SuggestedPrice+$ PropertyChanged=� .  .  . 6�  �� 5�      $��حفظ��6   $��8��6$   $��1��61   $	��200��6f   ��6A   �� *SaveItemCommand+6t   5�      5�      5�      