using DataAccessLayer;
using Domain;
using Prism.Commands;
using Prism.Events;
using Prism.Mvvm;
using SalesModule.Events;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SalesModule.ViewModels
{
   public  class CustomerViewModel : BindableBase
    {
        DBContext data = new DBContext();
        public CustomerViewModel(IEventAggregator EmpEvent)
        {
            EmpEvent.GetEvent<evntGetCustomer>().Subscribe(updated);
            SaveCustomerCommand = new DelegateCommand(ExcuteSaveCustomer, CanSaveCustomer);
            if(CurrrentCustomer==null)
            {
                CurrrentCustomer = new Customer();
            }
            _EventAggregator = EmpEvent;
        }

        private bool CanSaveCustomer()
        {
            return true;
        }

        private IEventAggregator _EventAggregator;


        private void ExcuteSaveCustomer()
        {
            if(CurrrentCustomer.ID>0)
            {
                data.Entry(CurrrentCustomer).State = System.Data.Entity.EntityState.Modified;
            }
            else
            {
                data.Customers.Add(CurrrentCustomer);
            }
           
            
            data.SaveChanges();
            _EventAggregator.GetEvent<evntUpdateList>().Publish("updateCustomerList");
        }

        private void updated(Customer obj)
        {
            CurrrentCustomer = obj;
            //   ID = obj.ID;
            //  Name = obj.Name;
        }

        private Customer _currentCustomer;

        public Customer CurrrentCustomer
        {


            get { return this._currentCustomer; }
            set
            {
                
                SetProperty(ref _currentCustomer, value);

            }
        }
        public DelegateCommand SaveCustomerCommand { get; set; }


        private int _ID;

        public int ID
        {


            get { return this._ID; }
            set
            {

                SetProperty(ref _ID, value);

            }
        }

        private string _Name;

        public string Name
        {


            get { return this._Name; }
            set
            {

                SetProperty(ref _Name, value);

            }
        }

        private string _Phone;

        public string Phone
        {


            get { return this._Phone; }
            set
            {

                SetProperty(ref _Phone, value);

            }
        }
    }
}
