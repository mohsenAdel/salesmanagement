using DataAccessLayer;
using Domain;
using Prism.Commands;
using Prism.Events;
using Prism.Mvvm;
using Prism.Regions;
using SalesModule.Events;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SalesModule.ViewModels
{
  public   class ItemsListViewModel : BindableBase
    {
        private IEventAggregator evntGetItem;
        public DelegateCommand<String> NavigateCommand { get; set; }
        DBContext data = new DBContext();
        private readonly IRegionManager _RegionManager;

        public ItemsListViewModel(IEventAggregator ItemEvnt, IRegionManager RegionManager, IEventAggregator EventAggregator)
        {
            evntGetItem = ItemEvnt;

            _RegionManager = RegionManager;
            Items = new ObservableCollection<Item>(data.Items.Include("UnitPrice").ToList());
            NavigateCommand = new DelegateCommand<string>(Navigate);
            GetCurrentItemCommand = new DelegateCommand<string>(CurrentItemCommand);
           

            UnitsPrice = new ObservableCollection<UnitPrice>(data.UnitPrices.ToList());
        }

        private void UpdateItemList()
        {
            Items = new ObservableCollection<Item>(data.Items.ToList());

        }

        private void CurrentItemCommand(string Uri)
        {
            evntGetItem.GetEvent<evntGetItem>().Publish(
               CurrentPositionItem);
           // _RegionManager.RequestNavigate("details", Uri);
        }

        private void Navigate(string Uri)
        {
            CurrentPositionItem = new Item();

          //  _RegionManager.RequestNavigate("details", Uri);
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

        private Item currentPositionItem;

        public Item CurrentPositionItem
        {
            get { return currentPositionItem; }
            set
            {
                if (SetProperty(ref currentPositionItem, value))
                {
                    if (currentPositionItem != null)
                    {
                        evntGetItem.GetEvent<evntGetItem>().Publish(
                            currentPositionItem);

                    }
                }
            }
        }


        public DelegateCommand<String> GetCurrentItemCommand { get; set; }

        private bool CanSaveItem()
        {
            return true;
        }

        private IEventAggregator _EventAggregator;


        private void ExcuteSaveItem()
        {
            if (CurrrentItem.ID > 0)
            {
                data.Entry(CurrrentItem).State = System.Data.Entity.EntityState.Modified;
            }
            else
            {
                data.Items.Add(CurrrentItem);
            }


            data.SaveChanges();
            UpdateItemList();
          //  _EventAggregator.GetEvent<evntUpdateList>().Publish("updateCustomerList");
        }

        
        private Item _currentItem;

        public Item CurrrentItem
        {


            get { return this._currentItem; }
            set
            {

                SetProperty(ref _currentItem, value);

            }
        }
        public DelegateCommand SaveItemCommand { get; set; }


        private ObservableCollection<UnitPrice> _UnitPrices;

        public ObservableCollection<UnitPrice> UnitsPrice
        {
            get { return this._UnitPrices; }
            set
            {

                SetProperty(ref _UnitPrices, value);

            }
        }
    }
}
