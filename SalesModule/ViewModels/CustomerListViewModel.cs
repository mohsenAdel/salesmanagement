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
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;

namespace SalesModule.ViewModels
{
    public class CustomerListViewModel : BindableBase
    {

        private IEventAggregator evntGetCustomer;
        public DelegateCommand<String> AddNewCustomerCommand { get; set; }
        DBContext data = new DBContext();
        private readonly IRegionManager _RegionManager;
        public DelegateCommand SaveCustomerCommand { get; set; }

        public CustomerListViewModel(IEventAggregator CustomerEvnt, IRegionManager RegionManager, IEventAggregator EventAggregator)
        {
            evntGetCustomer = CustomerEvnt;

            _RegionManager = RegionManager;
            Customers = new ObservableCollection<Customer>(data.Customers.ToList());
            AddNewCustomerCommand = new DelegateCommand<string>(NewCustomerCommand);
            GetCurrentCustomerCommand= new DelegateCommand<string>(CurrentCustomerCommand);
           

            SaveCustomerCommand = new DelegateCommand(ExcuteSaveCustomer, CanSaveCustomer);
            if (CurrentPositionCustomer == null)
            {
                CurrentPositionCustomer = new Customer();
            }
        }

        private void UpdateCustomerList()
        {
            Customers = new ObservableCollection<Customer>(data.Customers.ToList());
            
        }

        private void CurrentCustomerCommand(string Uri)
        {
            evntGetCustomer.GetEvent<evntGetCustomer>().Publish(
               CurrentPositionCustomer);
          //  _RegionManager.RequestNavigate("details", Uri);
        }

        private void NewCustomerCommand(string Uri)
        {

            CurrentPositionCustomer = new Customer();
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

        private Customer currentPositionCustomer;

        public Customer CurrentPositionCustomer
        {
            get { return currentPositionCustomer; }
            set
            {
                if (SetProperty(ref currentPositionCustomer, value))
                {
                    if (currentPositionCustomer != null)
                    {
                        evntGetCustomer.GetEvent<evntGetCustomer>().Publish(
                            currentPositionCustomer);
                       
                    }
                }
            }
        }


        public DelegateCommand<String> GetCurrentCustomerCommand { get; set; }

       


        private bool CanSaveCustomer()
        {
            return true;
        }

     


        private void ExcuteSaveCustomer()
        {
            if (CurrentPositionCustomer.ID > 0)
            {
                data.Entry(CurrentPositionCustomer).State = System.Data.Entity.EntityState.Modified;
            }
            else
            {
                data.Customers.Add(CurrentPositionCustomer);
            }


            data.SaveChanges();
            UpdateCustomerList();
            //_EventAggregator.GetEvent<evntUpdateList>().Publish("updateCustomerList");
        }

        
    }
}
