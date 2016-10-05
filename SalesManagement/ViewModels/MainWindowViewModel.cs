using Prism.Commands;
using Prism.Mvvm;
using Prism.Regions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SalesManagement.ViewModels
{
   public class MainWindowViewModel: BindableBase
    {
        private readonly IRegionManager _RegionManager;
        public DelegateCommand<String> NavigateCommand { get; set; }

        public MainWindowViewModel(IRegionManager RegionManager)
        {
            _RegionManager = RegionManager;
            NavigateCommand = new DelegateCommand<string>(Navigate);
        }

        private void Navigate(string Uri)
        {
            _RegionManager.RequestNavigate("details", Uri);
        }
    }
}
