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
        public DelegateCommand<String> NavigateCommand { get; set; }
        DBContext data = new DBContext();
        private readonly IRegionManager _RegionManager;

        public CustomerListViewModel(IEventAggregator CustomerEvnt, IRegionManager RegionManager, IEventAggregator EventAggregator)
        {
            evntGetCustomer = CustomerEvnt;

            _RegionManager = RegionManager;
            Customers = new ObservableCollection<Customer>(data.Customers.ToList());
            NavigateCommand = new DelegateCommand<string>(Navigate);
            GetCurrentCustomerCommand= new DelegateCommand<string>(CurrentCustomerCommand);
            EventAggregator.GetEvent<evntUpdateList>().Subscribe(UpdateCustomerList);
        }

        private void UpdateCustomerList(string obj)
        {
            Customers = new ObservableCollection<Customer>(data.Customers.ToList());
            
        }

        private void CurrentCustomerCommand(string Uri)
        {
            evntGetCustomer.GetEvent<evntGetCustomer>().Publish(
               CurrentPositionSummaryItem);
            _RegionManager.RequestNavigate("details", Uri);
        }

        private void Navigate(string Uri)
        {

            evntGetCustomer.GetEvent<evntGetCustomer>().Publish(
                new Customer());
            _RegionManager.RequestNavigate("details", Uri);
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

        private Customer currentPositionSummaryItem;

        public Customer CurrentPositionSummaryItem
        {
            get { return currentPositionSummaryItem; }
            set
            {
                if (SetProperty(ref currentPositionSummaryItem, value))
                {
                    if (currentPositionSummaryItem != null)
                    {
                        evntGetCustomer.GetEvent<evntGetCustomer>().Publish(
                            currentPositionSummaryItem);
                       
                    }
                }
            }
        }


        public DelegateCommand<String> GetCurrentCustomerCommand { get; set; }
    }
}
