﻿using SalesManagement.ViewModels;
using System;
using System.Collections.Generic;
using System.ComponentModel.Composition;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace SalesManagement.Views
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
      [Export]
    public partial class MainWindow : Window
    {
        public MainWindow(MainWindowViewModel ViewModel)
        {
            InitializeComponent();
            DataContext = ViewModel;
        }
        [Import]
        [SuppressMessage("Microsoft.Design", "CA1044:PropertiesShouldNotBeWriteOnly", Justification = "Needs to be a property to be composed by MEF")]
        MainWindowViewModel ViewModel
        {
            set
            {
                this.DataContext = value;
            }
        }
    }
}
