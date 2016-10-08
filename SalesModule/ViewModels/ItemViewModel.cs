using DataAccessLayer;
using Domain;
using Prism.Commands;
using Prism.Events;
using Prism.Mvvm;
using SalesModule.Events;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SalesModule.ViewModels
{
  public  class ItemViewModel : BindableBase
    {
        DBContext data = new DBContext();
        public ItemViewModel(IEventAggregator EmpEvent)
        {
            EmpEvent.GetEvent<evntGetItem>().Subscribe(updated);
            SaveItemCommand = new DelegateCommand(ExcuteSaveItem, CanSaveItem);
            if (CurrrentItem == null)
            {
                CurrrentItem = new Item();
            }
            _EventAggregator = EmpEvent;

            UnitsPrice = new ObservableCollection<UnitPrice>(data.UnitPrices.ToList());
        }

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
            _EventAggregator.GetEvent<evntUpdateList>().Publish("updateCustomerList");
        }

        private void updated(Item obj)
        {
            CurrrentItem = obj;
            //   ID = obj.ID;
            //  Name = obj.Name;
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
