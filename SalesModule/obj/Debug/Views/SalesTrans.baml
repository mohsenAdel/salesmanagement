   M S B A M L   `   `   `  ����F  BSalesModule, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:SalesModule.ViewsSalesModule.Views  5      "    SalesModule.Views.SalesTrans   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      1localclr-namespace:SalesModule.Views     5      .��5	      � $��RightToLeft=�6     � RowDefinitions  5
   
   �� 5      $
��auto �6   �� 5      $��* �6   �� 5      $	��100 �6   .+�5   
   � $��0��6   .+�5      ��  �� Orientation$ 
Horizontal=�6   .+�5      �� -   5         ��Name$ lblCustomerName��5   5   $��0��6   $��4��6%   $��إسم العميل:��6N   $��5,5,5,5q�6d   $��12(�6u   $
��Bold"�6�   �� 5      -   5         ��Name$ cmbCustomerName��5      $
��Left=�65   $��5,5,5,5q�6P   $	��Top=�6a   $	��180��6y   $��40��6�   $��16(�6�    �� DisplayMemberPath$ CustomerName��6�    �� SelectedValue 6�   ��  �� Path$ Customer� �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=���6  �� *	Customers+�� 5      -   5        $ lblBillNumber��5      $�� باركود الصنف:��6/   $��4,10,6,0q�6H   $��12(�6Z   $
��Bold"�6h   �� 5      -   5        	 ��Name$	 txtItemNumber��5      $
��Left=�63   $��40��6N   $��	10,10,5,5q�6Z   
 �� TextWrapping$

 Wrap=�6m   $�� ��6�   $	��Top=�6�   $	��258��6�   $��14(�6�   $	��100��6�   �� 5      -   5        $ lbltransNum��5   (   $��6��6   $y�Visible=�6=   $��اسم الصنف:��6R   $��4,10,6,0q�6g   $��12(�6y   $
��Bold"�6�   �� 5      -   5        $ cmbItemName��5      $y�Visible=�60   $
��Left=�6F   $��40��6a   $��3,10,5,5q�6m   $	��Top=�6�   $	��290��6�   $��14(�6�   $	��100��6�   $ itemName��6   6�   �� $ SelectedItem�$ TwoWay=���6�   �� *Items+6  5      �� 5      $ 
Horizontal=�6   .+�5      �� -   5        $ lblCount��5      $��الكمية:��6+   $��5,5,5,5q�6=   $��12(�6N   $
��Bold"�6\   �� 5      -   5        $	 txtCount��5      $
��Left=�6X   $��40��6s   $��5,5,5,5q�6   $

 Wrap=�6�   $	��Top=�6�   $��20��6�   $��14(�6�   $	��100��6�   ��6-   �� *SelectedItem.ItemCount+6�   �� 5"      -	   5        $ lblExtrameter��5"   5   $��1��6   $��0��6%   $��سعر الوحدة:��6L   $��5,5,5,5q�6b   $��12(�6s   $
��Bold"�6�   �� 5#      -
   5        $	 txtExtraMeter��5#      $
��Left=�6_   $��40��6z   $��5,5,5,5q�6�   $

 Wrap=�6�   $	��Top=�6�   $��70��6�   $��14(�6�   ��62   �� *SelectedItem.SuggestedPrice+6�   �� 5$      -   5         ��Name$ btnAddOrder��5$      $y�Visible=�60   $��إضافه إذن��6E   $��14(�6Y   $��
10,10,5,10q�6g   $��20��6|   ��6�   �� *AddItemCommand+5%      5'      � 5)   
   $��1��6   .+�5*      &   System.Windows.Controls.DataGrid  -   5          Name$	 grd��5*   J      CanUserAddRows .     AutoGenerateColumns .     SelectionMode$ Single=�6W      	RowHeight$ 35Q�6n   $��18(�6}      ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * 6�   $��0,0,0,10q�6�   ��6�   �� *
TranssGrid+ 6�   �� $ SelectedGrid�$ TwoWay=�   Columns 5+      0  *System.Windows.Controls.DataGridTextColumn  5-      ,  &System.Windows.Controls.DataGridColumn   Header$ كود الاذن��6+   -   5        	colID��   
Visibility$ Hidden=�5-   p   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6?   �� *TransHeadID+6p     5.      $ كود الصنف��6+   -   5        	colItemID��$ Hidden=�5.   l    6>   �� *ItemID+6l     5/      $ 
الصنف��6+      
IsReadOnly . -   5        colItemName�� 5/   L   �� *
ItemName+6i     50      $ الكمية��6+   -   5        colRollCount�� 50   =   �� *	ItemCount+ �� NotifyOnTargetUpdated . $ 	LostFocus=�6�     51      $ سعر الوحدة��6+   -   5        colPrice�� 51   ?   �� *	ItemPrice+ . $ 	LostFocus=�6�     52      $ اجمالي السعر��6+    . -   5        colTotalPrice�� 52   S   �� *ItemTotalPrice+ . $ 	LostFocus=�6�   4  .System.Windows.Controls.DataGridTemplateColumn  53         CellTemplate 54      �� 55      .R�56   "   �� ��6)   ��  �� RelativeSource �� *FindAncestor+ �� AncestorType"  $ DataContext.deleteCommand�.��6�   delete6�   57      59      5;      5=      � 5?   
   $��2��6     5@      �� 5A      �� 5B       � ColumnDefinitions 5D      �� 5E      $��90 �6#   �� 5F      $	��180 �6#   �� 5G      $��90 �6#   �� 5H      $	��180 �6#   �� 5I      $��90 �6#   �� 5J      $	��180 �6#   �� 5K      $	��130 �6#   �� 5L      $	��180 �6#   .+�5P      �� -   5        $ lblTotalCount��5P   1   $��0��6   $��0��6!   $�� الكمية :��6H   $��5,5,5,5q�6\   $��14(�6m   $
��Bold"�6{   �� 5Q      -   5        $ lblTotalCount_v��5Q   1   $��0��6   $��1��6!   $��0��6J   $��5,5,5,5q�6V   $��14(�6g   $
��Bold"�6u   �� 5T      -   5        $ lblTotalPrice��5T   1   $��0��6   $��4��6!   $��
السعر��6H   $��5,5,5,5q�6X   $��14(�6i   $
��Bold"�6w   �� 5U      -   5        $ lblTotalPrice_v��5U   1   $��0��6   $��5��6!   $
��0.00��6J   $��5,5,5,5q�6Y   $��14(�6j   $
��Bold"�6x   �� 5W      -   5        $ btnSaveOrder��5W   3   $��1��6   $��5��6"   $��حفظ��6I   $��16(�6W   $��	10,5,45,5q�6e   $��1��6x   �� 5X      -   5        $ btnClear��5X   3   $��1��6   $��6��6"   $��جديد��6g   $��16(�6v   $��5,5,0,5q�6�   $��1��6�   ��6E   �� *deleteCommand+6�   5[      5\      5]      