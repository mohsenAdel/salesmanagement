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
            EventAggregator.GetEvent<evntUpdateList>().Subscribe(UpdateItemList);
        }

        private void UpdateItemList(string obj)
        {
            Items = new ObservableCollection<Item>(data.Items.ToList());

        }

        private void CurrentItemCommand(string Uri)
        {
            evntGetItem.GetEvent<evntGetItem>().Publish(
               CurrentPositionSummaryItem);
            _RegionManager.RequestNavigate("details", Uri);
        }

        private void Navigate(string Uri)
        {

            evntGetItem.GetEvent<evntGetCustomer>().Publish(
                new Customer());
            _RegionManager.RequestNavigate("details", Uri);
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

        private Item currentPositionSummaryItem;

        public Item CurrentPositionSummaryItem
        {
            get { return currentPositionSummaryItem; }
            set
            {
                if (SetProperty(ref currentPositionSummaryItem, value))
                {
                    if (currentPositionSummaryItem != null)
                    {
                        evntGetItem.GetEvent<evntGetItem>().Publish(
                            currentPositionSummaryItem);

                    }
                }
            }
        }


        public DelegateCommand<String> GetCurrentItemCommand { get; set; }
    }
}
