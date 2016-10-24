using DataAccessLayer;
using Domain;
using Prism.Commands;
using Prism.Mvvm;
using SalesModule.Business_Classes;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SalesModule.ViewModels
{
   public class SalesTransViewModel : BindableBase
    {
        DBContext data = new DBContext();
        public DelegateCommand<String> AddItemCommand { get; set; }

        public DelegateCommand<String> deleteCommand { get; set; }
        public SalesTransViewModel()
        {
            Items = new ObservableCollection<Item>(data.Items.Include("UnitPrice").ToList());
            Customers = new ObservableCollection<Customer>(data.Customers.ToList());
            TranssGrid = new ObservableCollection<TransGrid>();

             AddItemCommand = new DelegateCommand<string>(AddItem);

            deleteCommand= new DelegateCommand<string>(deleteItem);
        }

        private void deleteItem(string obj)
        {
            TranssGrid.Remove(SelectedGrid);
        }

        private void AddItem(string obj)
        {
            TransGrid t = new Business_Classes.TransGrid();
            t.ItemID = SelectedItem.ID;
            t.ItemName = SelectedItem.itemName;
            t.ItemPrice = SelectedItem.SuggestedPrice;
            t.ItemCount = SelectedItem.ItemCount;
            t.ItemTotalPrice = t.ItemPrice * t.ItemCount;
            TranssGrid.Add(t);
        }

        private ObservableCollection<Item> _Items;

        public ObservableCollection<Item> Items
        {
            get { return this._Items; }
            set
            {

                SetProperty(ref _Items, value);

            }
        }

        private TransGrid _SelectedGrid;
        public TransGrid SelectedGrid
        {
            get { return this._SelectedGrid; }
            set
            {

                SetProperty(ref _SelectedGrid, value);

            }
        }


        private Item _SelectedItem;

        public Item SelectedItem
        {
            get { return this._SelectedItem; }
            set
            {

                SetProperty(ref _SelectedItem, value);

            }
        }



        private ObservableCollection<Customer> _Customers;

        public ObservableCollection<Customer> Customers
        {
            get { return this._Customers; }
            set
            {

                SetProperty(ref _Customers, value);

            }
        }


        private ObservableCollection<TransGrid> _TransGrid;

        public ObservableCollection<TransGrid> TranssGrid
        {
            get { return this._TransGrid; }
            set
            {

                SetProperty(ref _TransGrid, value);

            }
        }

    }
}
