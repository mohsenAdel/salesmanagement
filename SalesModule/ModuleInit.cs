using Microsoft.Practices.Unity;
using Prism.Modularity;
using Prism.Regions;
using SalesModule.Views;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SalesModule
{
    public class ModuleInit : IModule
    {
        private readonly IUnityContainer container;
        private readonly IRegionManager regionManager;



        public ModuleInit(IUnityContainer container, IRegionManager regionManager)
        {
            this.container = container;
            this.regionManager = regionManager;
        }

        public void Initialize()
        {
            // Register the EmployeeDataService concrete type with the container.
            // Change this to swap in another data service implementation.
            // this.container.RegisterType<IEmployeeDataService, EmployeeDataService>();

            // This is an example of View Discovery which associates the specified view type
            // with a region so that the view will be automatically added to the region when
            // the region is first displayed.

            // TODO: 03 - The EmployeeModule configures the EmployeeListView to automatically appear in the Left region (using View Discovery).
            // Show the Employee List view in the shell's left hand region.
            this.regionManager.RegisterViewWithRegion("ContentRegion",
                                                      typeof(CustomerList));

            //  this.regionManager.RegisterViewWithRegion("details",
            //     typeof(cst));

            // TODO: 04 - The EmployeeModule defines a controller class, MainRegionController, which programmatically displays views in the Main region (using View Injection).
            // Create the main region controller.
            // This is used to programmatically coordinate the view
            // in the main region of the shell.
            //this._mainRegionController = this.container.Resolve<MainRegionController>();

            // TODO: 08 - The EmployeeModule configures the EmployeeDetailsView and EmployeeProjectsView to automatically appear in the Tab region (using View Discovery).
            // Show the Employee Details and Employee Projects view in the tab region.
            // The tab region is defined as part of the Employee Summary view which is only
            // displayed once the user has selected an employee in the Employee List view.
            //this.regionManager.RegisterViewWithRegion(RegionNames.TabRegion,
            //  () => this.container.Resolve<EmployeeDetailsView>());
            //this.regionManager.RegisterViewWithRegion(RegionNames.TabRegion,
            // () => this.container.Resolve<EmployeeProjectsView>());
        }
    }
}
